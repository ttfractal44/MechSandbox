/*
 * glrendering.h
 *
 *  Created on: Dec 8, 2014
 *      Author: theron
 */

#ifndef GLRENDERING_H_
#define GLRENDERING_H_

#include "datastructures.h"
#include "world.h"

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

extern World* renderWorld;

extern bool runLoopThreads;

extern bool printFPS;

extern bool windowResize;

extern SDL_Window* sdlWindow;
extern SDL_GLContext sdlglContext;

void waitNextRefresh();

void setGraphicsRenderWorld(World*);

void initSDLGLRendering();

void destroySDLGLRendering();

void render();

void renderLoop();

void startRenderLoopThread();

void drawWorld(World*);

void drawEntity(World::Entity*);

GLuint compileShader(std::string vertexShaderPath, std::string fragmentShaderPath);

void initializeEntityDrawing(World::Entity* entity);

void updateEntityDrawBuffers(World::Entity*);

void updateAllDrawBuffersInWorld(World*);

}



#endif /* GLRENDERING_H_ */
