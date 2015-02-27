/*
 * input.cpp
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#include "input.h"

namespace Client {

void updateMouseMode() {
	if (captureMouse) {
		SDL_SetRelativeMouseMode((SDL_bool)SDL_TRUE);
	} else {
		SDL_SetRelativeMouseMode((SDL_bool)SDL_FALSE);
		SDL_WarpMouseInWindow(sdlWindow, windowWidth/2, windowHeight/2);
	}
}

void getUserEvents() {

	//World::Camera* camera = renderWorld->controlledCamera;

	SDL_Event event;
	while (SDL_PollEvent(&event)) // Loop until all events for this cycle are handled
	{
		//printf("Event type %d\n",event.type);
		switch (event.type) {
		case (SDL_QUIT):
			runloop=false;
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
	    	int width;
	    	int height;
	    	SDL_GetWindowSize(sdlWindow, &width, &height);
	    	resize(width,height);
	    	break;

		case (SDL_MOUSEMOTION):
			if (captureMouse) {
				camera->yaw-=(float)(event.motion.xrel)/cameraSensitivity;
				camera->pitch-=(float)(event.motion.yrel)/cameraSensitivity;
			}
			else {
				// GDK Event 3 (GDK_MOTION_NOTIFY)
				//GdkEvent *newEvent = new GdkEvent();
				//newEvent->type = GDK_MOTION_NOTIFY;
				/*GdkEvent *newEvent = gdk_event_new(GDK_MOTION_NOTIFY);
				//((GdkEventMotion*)newEvent)->time = 0;
				((GdkEventMotion*)newEvent)->x = event.motion.x;
				((GdkEventMotion*)newEvent)->y = event.motion.y;
				((GdkEventMotion*)newEvent)->window = gtk_widget_get_window(gtkWindow);
				((GdkEventMotion*)newEvent)->device = gtk_get_current_event_device();*/
				//assert(((GdkEventMotion*)newEvent)->device);
				//gdk_event_put(newEvent);
				//gdk_display_put_event(gdk_display_get_default(), newEvent);
				//gtk_propagate_event(gtkWindow, newEvent);
				//gtk_main_do_event(newEvent);
			}
			//printf("Mousemotion %d,%d\n",width,height);
			break;
		case (SDL_MOUSEBUTTONDOWN):
			if (event.button.button==SDL_BUTTON_RIGHT) {
				captureMouse=!captureMouse;
				updateMouseMode();
			}
			if (!captureMouse && event.button.button==SDL_BUTTON_LEFT) {
				// GDK Event 4 (GDK_BUTTON_PRESS)
				/*//GdkEvent *newEvent = new GdkEvent();
				//newEvent->type = GDK_BUTTON_PRESS;
				GdkEvent *newEvent = gdk_event_new(GDK_BUTTON_PRESS);
				((GdkEventButton*)newEvent)->time = 0;
				((GdkEventButton*)newEvent)->x = event.motion.x;
				((GdkEventButton*)newEvent)->y = event.motion.y;
				((GdkEventButton*)newEvent)->window = gtk_widget_get_window(gtkWindow);
				((GdkEventMotion*)newEvent)->device = gtk_get_current_event_device();
				gdk_event_put(newEvent);
				//gdk_display_put_event(gdk_display_get_default(), newEvent);
				//gtk_propagate_event(gtkWindow, newEvent);
				//gtk_main_do_event(newEvent);*/
			}
			break;
		case (SDL_MOUSEBUTTONUP):
			if (!captureMouse && event.button.button==SDL_BUTTON_LEFT) {
				// GDK Event 7 (GDK_BUTTON_RELEASE)
				/*//GdkEvent *newEvent = new GdkEvent();
				//newEvent->type = GDK_BUTTON_RELEASE;
				GdkEvent *newEvent = gdk_event_new(GDK_BUTTON_RELEASE);
				((GdkEventButton*)newEvent)->time = 0;
				((GdkEventButton*)newEvent)->x = event.motion.x;
				((GdkEventButton*)newEvent)->y = event.motion.y;
				((GdkEventButton*)newEvent)->window = gtk_widget_get_window(gtkWindow);
				((GdkEventMotion*)newEvent)->device = gtk_get_current_event_device();
				gdk_event_put(newEvent);
				//gdk_display_put_event(gdk_display_get_default(), newEvent);
				//gtk_propagate_event(gtkWindow, newEvent);
				//gtk_main_do_event(newEvent);*/
			}
			break;
		}
	}

	const Uint8 *keystate = SDL_GetKeyboardState(NULL);

	if (captureMouse) {
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
				camera->position.x()+=cos(camera->yaw)*movementSpeed;
				camera->position.y()+=sin(camera->yaw)*movementSpeed;
			}
		}
		if (keystate[SDL_SCANCODE_S]) {
			if (controlStyle==3) {
				camera->position-=getCameraForwardVector(camera)*movementSpeed;
			} else {
				camera->position.x()-=cos(camera->yaw)*movementSpeed;
				camera->position.y()-=sin(camera->yaw)*movementSpeed;
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
				camera->position.z()+=movementSpeed;
			}
		}
		if (keystate[SDL_SCANCODE_LSHIFT]) {
			if (controlStyle==3) {
				camera->position-=getCameraUpVector(camera)*movementSpeed;
			} else {
				camera->position.z()-=movementSpeed;
			}
		}
	}

	sceneCamera->setViewMatrixAsLookAt(
		camera->position,
		camera->position + getCameraForwardVector(camera),
		getCameraUpVector(camera)
	);

}



} /* namespace Client */
