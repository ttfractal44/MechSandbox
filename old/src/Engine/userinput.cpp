/*
 * userinput.cpp
 *
 *  Created on: Dec 16, 2014
 *      Author: theron
 */

#include "userinput.h"
#include "world.h"
#include "glrendering.h"
#include "gtkuserinterface.h"

#include <SDL2/SDL.h>


namespace Engine {

bool captureMouse = false;
int controlStyle = 2;

float cameraSensitivity = 1000;

float movementSpeed = 0.1;

bool rungtk=false;

SDL_Thread* inputLoopThread;

void inputLoop() {

	while (runLoopThreads) {
		getUserEvents();
		if (rungtk) {
			stepGTKInterface();
		}
		SDL_Delay(1000./60.);
	}
}

int inputLoopThreadFunc(void *p) {
	inputLoop();
	return 0;
}

void startInputLoopThread() {
	inputLoopThread = SDL_CreateThread(inputLoopThreadFunc, "inputLoopThread", (void *)NULL);
}

void updateMouseMode() {
	if (captureMouse) {
		SDL_SetRelativeMouseMode(SDL_TRUE);
	} else {
		SDL_SetRelativeMouseMode(SDL_FALSE);
	}
}

void getUserEvents() {

	World::Camera* camera = renderWorld->controlledCamera;

	SDL_Event event;
	while (SDL_PollEvent(&event)) // Loop until all events for this cycle are handled
	{
		//printf("Event type %d\n",event.type);
		switch (event.type) {
		case (SDL_QUIT):
			runLoopThreads=false;
			break;
		case (SDL_KEYDOWN):
			switch (event.key.keysym.sym) { // Key SCANcode

			case (SDLK_ESCAPE):
				captureMouse=!captureMouse;
				updateMouseMode();
				break;
			}
			break;
	    case (512):
	    	/*int width;
	    	int height;
	    	SDL_GetWindowSize(sdlWindow, &width, &height);
	    	glViewport(0,0,width,height);*/
	    	windowResize=true;
	    	break;

		case (SDL_MOUSEMOTION):
			if (captureMouse) {
				camera->yaw-=(float)(event.motion.xrel)/cameraSensitivity;
				camera->pitch-=(float)(event.motion.yrel)/cameraSensitivity;
			}
			//printf("Mousemotion %d,%d\n",width,height);
			break;
		}
	}

	const Uint8 *keystate = SDL_GetKeyboardState(NULL);

	if (keystate[SDL_SCANCODE_I]) {
		camera->pitch+=.05;
	}
	if (keystate[SDL_SCANCODE_K]) {
		camera->pitch-=.05;
	}
	if (keystate[SDL_SCANCODE_L]) {
		camera->yaw-=.05;
	}
	if (keystate[SDL_SCANCODE_J]) {
		camera->yaw+=.05;
	}

	if (keystate[SDL_SCANCODE_W]) {
		if (controlStyle==3) {
			camera->position+=getCameraForwardVector(camera)*movementSpeed;
		} else {
			camera->position.x+=cos(camera->yaw)*movementSpeed;
			camera->position.y+=sin(camera->yaw)*movementSpeed;
		}
	}
	if (keystate[SDL_SCANCODE_S]) {
		if (controlStyle==3) {
			camera->position-=getCameraForwardVector(camera)*movementSpeed;
		} else {
			camera->position.x-=cos(camera->yaw)*movementSpeed;
			camera->position.y-=sin(camera->yaw)*movementSpeed;
		}
	}
	if (keystate[SDL_SCANCODE_A]) {
		camera->position-=getCameraRightVector(camera)*movementSpeed;
	}
	if (keystate[SDL_SCANCODE_D]) {
		camera->position+=getCameraRightVector(camera)*movementSpeed;
	}
	if (keystate[SDL_SCANCODE_SPACE]) {
		if (controlStyle==3) {
			camera->position+=getCameraUpVector(camera)*movementSpeed;
		} else {
			camera->position.z+=movementSpeed;
		}
	}
	if (keystate[SDL_SCANCODE_LSHIFT]) {
		if (controlStyle==3) {
			camera->position-=getCameraUpVector(camera)*movementSpeed;
		} else {
			camera->position.z-=movementSpeed;
		}
	}

	camera->view = glm::lookAt(
		camera->position,
		camera->position + getCameraForwardVector(camera),
		getCameraUpVector(camera)
	);

}

}
