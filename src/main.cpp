#define GLEW_STATIC
#include <GL/glew.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_opengl.h>
#include <SDL2/SDL_timer.h>
#include <GL/glu.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <stdio.h>
#include <string>
#include <assert.h>

#include "misc/utils.h"
#include "Engine/glrendering.h"
#include "Engine/userinput.h"
#include "Engine/gtkuserinterface.h"

Engine::World* world = new Engine::World;

int main(int argc, char* argv[]) {

	Engine::initGTKInterface(argc, argv);

	Engine::rungtk = true;

	Engine::setGraphicsRenderWorld(world);

	//Engine::startRenderLoopThread();

	Engine::initSDLGLRendering();

	//printf("Initializing\n");
	//initSDL();
	//printf("SDL Initialized\n");

	//Engine::initializeWorldShaders(&world);

	Engine::World::Camera* mainCamera = Engine::newCamera(world);

	//Engine::World::Camera* viewCamera = Engine::newCamera(world);

	Engine::setCurrentCamera(world,mainCamera);
	//Engine::setRenderCamera(world,viewCamera);

	mainCamera->position = glm::vec3(2,2,2);
	mainCamera->yaw = 5*PI/4;
	mainCamera->pitch = -PI/4;

	Engine::World::Entity* newentity;

	std::vector<GLfloat> vertices;

	std::vector<GLuint> elements;

	newentity = Engine::newEntity(world);

	/*vertices.push_back(0.0f);	vertices.push_back(0.5f);	vertices.push_back(1.0f);	vertices.push_back(0.0f);	vertices.push_back(0.0f);
	vertices.push_back(0.5f);	vertices.push_back(-0.5f);	vertices.push_back(0.0f);	vertices.push_back(1.0f);	vertices.push_back(0.0f);
	vertices.push_back(-0.5f);	vertices.push_back(-0.5f);	vertices.push_back(0.0f);	vertices.push_back(0.0f);	vertices.push_back(1.0f);*/

	appendVec3(&vertices, 0.0f, 0.5f, 0.0f);	appendVec3(&vertices, 1.0f, 0.0f, 0.0f);
	appendVec3(&vertices, 0.5f, -0.5f, 0.0f);	appendVec3(&vertices, 0.0f, 1.0f, 0.0f);
	appendVec3(&vertices, -0.5f, -0.5f, 0.0f);	appendVec3(&vertices, 0.0f, 0.0f, 1.0f);

	elements.push_back(0);
	elements.push_back(1);
	elements.push_back(2);


	newentity->graphicsMesh.vertices.insert(newentity->graphicsMesh.vertices.end(),vertices.begin(),vertices.end());
	newentity->graphicsMesh.elements.insert(newentity->graphicsMesh.elements.end(),elements.begin(),elements.end());

	Engine::updateEntityDrawBuffers(newentity);

	vertices.clear();
	elements.clear();

	newentity = Engine::newEntity(world);

	int n = 100;

	int xrowsize = 2*n;

	//int counter = 0;

	int ynum = 0;
	for (int y=-n; y<n; y++) {
		int xnum = 0;
		for (int x=-n; x<n; x++) {
			/*vertices.push_back(x/10.);		vertices.push_back(y/10.);		vertices.push_back((x+10)/20.);	vertices.push_back((y+10)/20.);	vertices.push_back(0.5f);
			vertices.push_back((x+1)/10.);	vertices.push_back(y/10.);		vertices.push_back((x+10)/20.);	vertices.push_back((y+10)/20.);	vertices.push_back(0.5f);
			vertices.push_back(x/10.);		vertices.push_back((y+1)/10.);	vertices.push_back((x+10)/20.);	vertices.push_back((y+10)/20.);	vertices.push_back(0.5f);*/
			appendVec3(&vertices, x/10., y/10., 0.0f);		appendVec3(&vertices, (x+10)/20., (y+10)/20., 0.5f);	appendVec3(&vertices, 0, 0, 1);
			//appendVec3(&vertices, (x+1)/10., y/10., 0.0f);	appendVec3(&vertices, (x+10)/20., (y+10)/20., 0.5f);
			//appendVec3(&vertices, x/10., (y+1)/10., 0.0f);	appendVec3(&vertices, (x+10)/20., (y+10)/20., 0.5f);
			//appendVec3(&elements, xnum, xnum+1, xnum+ynum*2*n);//		appendVec3(&elements, );
			//printf("%d, %d\n",xnum,xnum+ynum*2*n);
			/*elements.push_back(counter);
			counter+=1;
			elements.push_back(counter);
			counter+=1;
			elements.push_back(counter);
			counter+=1;*/
			if (y<n-1 && x<n-1) {
				elements.push_back(ynum*xrowsize+xnum);
				elements.push_back(ynum*xrowsize+xnum+1);
				elements.push_back(ynum*xrowsize+xnum+xrowsize);
			}
			xnum+=1;
			/*if (xnum>xrowsize) {
				xrowsize = xnum;
			}*/
		}
		ynum+=1;
	}

	/*for (uint i=0; i<vertices.size(); i++) {
		printf("%f, ",vertices.at(i));
		if (i%6==5) {
			printf("\n");
		}

	}

	for (uint i=0; i<elements.size(); i++) {
		printf("%d, ",elements.at(i));
		if (i%3==2) {
			printf("\n");
		}

	}*/

	newentity->graphicsMesh.vertices.insert(newentity->graphicsMesh.vertices.end(),vertices.begin(),vertices.end());
	newentity->graphicsMesh.elements.insert(newentity->graphicsMesh.elements.end(),elements.begin(),elements.end());

	Engine::updateEntityDrawBuffers(newentity);

	vertices.clear();
	elements.clear();

	newentity = Engine::newEntity(world);

	GLfloat verts[] = {
			-1,-1,-1,    0,0,0,		-1,-1,-1,
			-1,-1, 1,    0,0,1,		-1,-1, 1,
			-1, 1,-1,    0,1,0,		-1, 1,-1,
			-1, 1, 1,    0,1,1,		-1, 1, 1,
			 1,-1,-1,    1,0,0,		 1,-1,-1,
			 1,-1, 1,    1,0,1,		 1,-1, 1,
			 1, 1,-1,    1,1,0,		 1, 1,-1,
			 1, 1, 1,    1,1,1,		 1, 1, 1,
	};

	/*GLfloat verts[] = {
			-1,-1,-1,    1,1,1,		-1,-1,-1,
			-1,-1, 1,    1,1,1,		-1,-1, 1,
			-1, 1,-1,    1,1,1,		-1, 1,-1,
			-1, 1, 1,    1,1,1,		-1, 1, 1,
			 1,-1,-1,    1,1,1,		 1,-1,-1,
			 1,-1, 1,    1,1,1,		 1,-1, 1,
			 1, 1,-1,    1,1,1,		 1, 1,-1,
			 1, 1, 1,    1,1,1,		 1, 1, 1,
	};*/

	GLuint elems[] = {
			0,4,2,
			6,2,4,
			3,7,1,
			5,1,7,
			0,1,4,
			5,4,1,
			3,2,7,
			6,7,2,
			0,2,1,
			3,1,2,
			5,7,4,
			6,4,7
	};

	//newentity->graphicsMesh.vertices.insert(newentity->graphicsMesh.vertices.end(),vertices.begin(),vertices.end());
	//newentity->graphicsMesh.elements.insert(newentity->graphicsMesh.elements.end(),elements.begin(),elements.end());

	newentity->graphicsMesh.vertices.insert(newentity->graphicsMesh.vertices.end(),verts,verts+8*9);
	newentity->graphicsMesh.elements.insert(newentity->graphicsMesh.elements.end(),elems,elems+12*3);

	Engine::updateEntityDrawBuffers(newentity);

	/*glClearColor(0.f, 0.f, 0.2f, 1.f);

	glClear(GL_COLOR_BUFFER_BIT);

	int frame=0;

	int lastTime = 0;
	int lastFrame = 0;

	int updateFPSInterval = 60;*/

	//Engine::renderLoop();
	Engine::startInputLoopThread();
	Engine::startRenderLoopThread();

	Engine::printFPS = true;

	world->entities[2]->model = glm::translate(world->entities[2]->model, glm::vec3(10.0f, 0.0f, 0.0f));

	while (Engine::runLoopThreads) {

		//Engine::getUserEvents();
		//Engine::render();
		//world->entities[0]->model = glm::rotate(world->entities[0]->model, 1.0f, glm::vec3(0.0f, 0.0f, 1.0f));
		//world->entities[0]->model = mainCamera->view;  // TODO: Support alignment of entity model with a camera, for visualization of non-view camera positions

		//glm::mat4 newMat;
		//world.entities[1].model = glm::rotate(world.entities[1].model, -0.0001f, glm::vec3(0.0f, 0.0f, 1.0f));
		//GLfloat yaw = 10.0;
		//world.entities[1].model = glm::rotate(newMat, (GLfloat)(mainCamera->yaw*180.0/PI), glm::vec3(0.0f, 0.0f, 1.0f));

		world->entities[2]->model = glm::rotate(world->entities[2]->model, 1.0f, glm::vec3(0.0f, 0.0f, 1.0f));

		//Engine::waitNextRefresh();
		SDL_Delay(1000./60.);

		//Engine::stepGTKInterface();

	}

	printf("Exiting...\n");

	// TODO: Cleanly exit SDL2?

	//Engine::renderLoop();
	return 0;
}
