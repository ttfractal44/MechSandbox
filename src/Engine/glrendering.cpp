/*
 * glrendering.cpp
 *
 *  Created on: Dec 8, 2014
 *      Author: theron
 */


#include "datastructures.h"
#include "world.h"
#include "../misc/utils.h"
#include "glrendering.h"
#include "userinput.h"

#include <GL/glew.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_opengl.h>
#include <GL/glu.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <stdio.h>
#include <string>

namespace Engine {

World* renderWorld;

bool runLoopThreads = true;

SDL_Thread* renderLoopThread;

SDL_Window* sdlWindow;
SDL_GLContext sdlglContext;

int frame=0;

int lastTime = 0;
int lastFrame = 0;

float currentFPS;

int updateFPSInterval = 60;

bool printFPS = false;

bool windowResize = false;

void waitNextRefresh() {
	SDL_GL_SwapWindow(sdlWindow);
}

void setGraphicsRenderWorld(World* world) {
	renderWorld = world;
}

void initSDLGLRendering() {

	SDL_Init(SDL_INIT_EVERYTHING);

	SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE );
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

	sdlWindow = SDL_CreateWindow("GLTest", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 1066,600,SDL_WINDOW_OPENGL|SDL_WINDOW_RESIZABLE);
	sdlglContext = SDL_GL_CreateContext(sdlWindow);
	//sdlglContext = SDL_GL_CreateContext(NULL);

	glewExperimental = GL_TRUE;
	glewInit();

	SDL_GL_SetSwapInterval(1);

	printf("GL Vendor: %s\n",glGetString(GL_VENDOR));
	printf("GL Renderer: %s\n",glGetString(GL_RENDERER));
	printf("GL Version: %s\n",glGetString(GL_VERSION));
	printf("GL Shader Version: %s\n",glGetString(GL_SHADING_LANGUAGE_VERSION));

	//  WORLD SHADERS

	renderWorld->basicEntityShaderProgram = compileShader("vertex.glsl","fragment.glsl");

	assert(renderWorld->basicEntityShaderProgram);

	glEnable(GL_DEPTH_TEST);

}

void destroySDLGLRendering() {
	//
}

void render() {
	if (windowResize) {
    	int width;
    	int height;
    	SDL_GetWindowSize(sdlWindow, &width, &height);
    	glViewport(0,0,width,height);
    	windowResize=false;
	}
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	Engine::drawWorld(renderWorld);

	frame+=1;

	if (frame%updateFPSInterval==0) {
		int time = SDL_GetTicks();
		currentFPS = (float)(frame-lastFrame)/(time-lastTime)*1000;
		if (printFPS) {
			printf("%f FPS\n",currentFPS);
		}
		lastTime = time;
		lastFrame = frame;
	}

	SDL_GL_SwapWindow(sdlWindow);
}

void renderLoop() {

	while (runLoopThreads) {
		render();
	}
}

int renderLoopThreadFunc(void *p) {
	//initSDLGLRendering();
	SDL_GL_MakeCurrent(sdlWindow,sdlglContext);
	renderLoop();
	return 0;
}

void startRenderLoopThread() {
	renderLoopThread = SDL_CreateThread(renderLoopThreadFunc, "renderLoopThread", (void *)NULL);
}

void drawWorld(World* world) {

	World::Camera* camera = world->renderCamera;
	camera->proj = glm::perspective(90.0f, 1066.0f / 600.0f, 0.0001f, 100.0f);
	camera->view = glm::lookAt(
		camera->position,
		camera->position + getCameraForwardVector(camera),
		getCameraUpVector(camera)
	);


	for (unsigned int i=0; i<(world->entities.size()); i++) {
		drawEntity(world->entities[i]);
	}
}

void drawEntity(World::Entity* entity) {

	if (!entity->vertexBufferId) {
		printf("Entity being drawn before initializeEntityDrawBuffers!\n");
		initializeEntityDrawing(entity);
	}

	glBindVertexArray(entity->vertexArrayId);
	//printf("### entity->vertexArrayId=%d\n",entity->vertexArrayId);
	//printf("glBindVertexArray(entity->vertexArrayId);\n");

	//glUseProgram(0);
	//printf("glUseProgram(0);\n");

	glUseProgram(entity->shaderProgram);
	//printf("### entity->shaderProgram=%d\n",entity->shaderProgram);
	//printf("glUseProgram(entity->shaderProgram);\n");
	//printf("### entity->vertexBufferId=%d\n",entity->vertexBufferId);
	glBindBuffer(GL_ARRAY_BUFFER, entity->vertexBufferId);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, entity->elementBufferId);
	//printf("glBindBuffer(GL_ARRAY_BUFFER, entity->vertexBufferId);\n");

	glUniformMatrix4fv(entity->modelMatrixLocation, 1, GL_FALSE, glm::value_ptr(entity->model));
	///printf("glUniformMatrix4fv(entity->modelMatrixLocation, 1, GL_FALSE, glm::value_ptr(entity->model));\n");
	glUniformMatrix4fv(entity->viewMatrixLocation, 1, GL_FALSE, glm::value_ptr(entity->world->renderCamera->view));
	//printf("glUniformMatrix4fv(entity->viewMatrixLocation, 1, GL_FALSE, glm::value_ptr(entity->world->renderCamera->view));\n");
	glUniformMatrix4fv(entity->projMatrixLocation, 1, GL_FALSE, glm::value_ptr(entity->world->renderCamera->proj));
	//printf("glUniformMatrix4fv(entity->projMatrixLocation, 1, GL_FALSE, glm::value_ptr(entity->world->renderCamera->proj));\n");

	//printf("### entity->graphicsMesh.numelements=%d\n", entity->graphicsMesh.numelements);
	//glDrawArrays(GL_TRIANGLES, 0, entity->graphicsMesh.numelements);
	glDrawElements(GL_TRIANGLES, entity->graphicsMesh.numelements, GL_UNSIGNED_INT, 0);
	//printf("glDrawArrays(GL_TRIANGLES, 0, entity->graphicsMesh.numelements);\n");

	glBindBuffer(GL_ARRAY_BUFFER, 0);
	//printf("glBindBuffer(GL_ARRAY_BUFFER, 0);\n");
}

GLuint compileShader(std::string vertexShaderPath, std::string fragmentShaderPath) {
	std::string vertexShaderSourceStr = readResource("shaders/"+vertexShaderPath).c_str();
	std::string fragmentShaderSourceStr = readResource("shaders/"+fragmentShaderPath).c_str();

	const GLchar* vertexShaderSource = vertexShaderSourceStr.c_str();
	const GLchar* fragmentShaderSource = fragmentShaderSourceStr.c_str();

	bool error=false;

	GLint vertexShaderStatus;
	GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
	glCompileShader(vertexShader);
	glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &vertexShaderStatus);
	if (vertexShaderStatus!=GL_TRUE) {
		printf("Vertex shader error!\n");
		char buffer[512];
		glGetShaderInfoLog(vertexShader, 512, NULL, buffer);
		printf("%s\n",buffer);
		//printf("Vertex shader source:\n%s\n",vertexShaderSource);
		error=true;
	}

	GLint fragmentShaderStatus;
	GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
	glCompileShader(fragmentShader);
	glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &fragmentShaderStatus);
	if (fragmentShaderStatus!=GL_TRUE) {
		printf("Fragment shader error!\n");
		char buffer[512];
		glGetShaderInfoLog(fragmentShader, 512, NULL, buffer);
		printf("%s\n",buffer);
		//printf("Fragment shader source:\n%s\n",fragmentShaderSource);
		error=true;
	}
	if (!error) {
		GLuint shaderProgram = glCreateProgram();
		glAttachShader(shaderProgram, vertexShader);
		glAttachShader(shaderProgram, fragmentShader);

		glBindFragDataLocation(shaderProgram, 0, "outColor");

		glLinkProgram(shaderProgram);

		return shaderProgram;
	} else {
		return 0;
	}
}

void initializeEntityDrawing(World::Entity* entity) {

	glGenVertexArrays(1, &entity->vertexArrayId);
	glBindVertexArray(entity->vertexArrayId);

	glGenBuffers(1, &entity->vertexBufferId);
	printf("Entity vertex buffer generated at id %i\n",entity->vertexBufferId);
	glBindBuffer(GL_ARRAY_BUFFER, entity->vertexBufferId);
	glGenBuffers(1, &entity->elementBufferId);
	printf("Entity element buffer generated at id %i\n",entity->elementBufferId);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, entity->elementBufferId);

	GLint vertexPositionAttrib = glGetAttribLocation(entity->shaderProgram, "position");
	glEnableVertexAttribArray(vertexPositionAttrib);
	glVertexAttribPointer(vertexPositionAttrib, 3, GL_FLOAT, GL_FALSE, 9*sizeof(GLfloat), 0);

	GLint vertexColorAttrib = glGetAttribLocation(entity->shaderProgram, "color");
	glEnableVertexAttribArray(vertexColorAttrib);
	glVertexAttribPointer(vertexColorAttrib, 3, GL_FLOAT, GL_FALSE, 9*sizeof(GLfloat), (void*)(3*sizeof(GLfloat)));

	GLint vertexNormalAttrib = glGetAttribLocation(entity->shaderProgram, "normal");
	glEnableVertexAttribArray(vertexNormalAttrib);
	glVertexAttribPointer(vertexNormalAttrib, 3, GL_FLOAT, GL_FALSE, 9*sizeof(GLfloat), (void*)(6*sizeof(GLfloat)));

	entity->modelMatrixLocation = glGetUniformLocation(entity->shaderProgram, "model");
	entity->viewMatrixLocation = glGetUniformLocation(entity->shaderProgram, "view");
	entity->projMatrixLocation = glGetUniformLocation(entity->shaderProgram, "proj");

}

void updateEntityDrawBuffers(World::Entity* entity) {
	if (!entity->vertexBufferId) {
		printf("Entity draw buffers called to be updated before initializeEntityDrawBuffers!\n");
		initializeEntityDrawing(entity);
	}
	glBindBuffer(GL_ARRAY_BUFFER, entity->vertexBufferId);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, entity->elementBufferId);
	glBufferData(GL_ARRAY_BUFFER, entity->graphicsMesh.vertices.size()*sizeof(GLfloat), &entity->graphicsMesh.vertices.front(), GL_STATIC_DRAW);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, entity->graphicsMesh.elements.size()*sizeof(GLuint), &entity->graphicsMesh.elements.front(), GL_STATIC_DRAW);
	entity->graphicsMesh.numelements = entity->graphicsMesh.elements.size();
	printf("numelements=%d\n",entity->graphicsMesh.numelements);
}

void updateAllDrawBuffersInWorld(World* world) {
	for (unsigned int i=0; i<(world->entities.size()); i++) {
		updateEntityDrawBuffers(world->entities[i]);
	}
}

}
