/*
 * GraphicsWindow.cpp
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#include "GraphicsWindow.h"

namespace Client {

GraphicsWindow::GraphicsWindow(Client* _client, std::string newWindowTitle, int newWindowWidth, int newWindowHeight) {
	client = _client;
	windowTitle = newWindowTitle;
	windowWidth = newWindowWidth;
	windowHeight = newWindowHeight;
	sdlWindow = NULL;
	sdlglContext = NULL;
	osg_graphicsWindow = NULL;
	osg_viewer = NULL;
	quitClientOnDestroy = false;
	windowMovingTimer = 0;
	lastWindowX=0;
	lastWindowY=0;
	//lastFocused=NULL;
	//secondLastFocused=NULL;
	//focusChangingTimer = 0;
	focused=false;
	eventHandler=NULL;
	//keystateHandler=NULL;
	idleFunc=NULL;
	mouseFollowWidget=NULL;
	mouseFollowWindow=NULL;
}

GraphicsWindow::~GraphicsWindow() {
	// TODO Auto-generated destructor stub
}

void GraphicsWindow::realize() {
	// SDL
	sdlWindow = SDL_CreateWindow(windowTitle.c_str(), SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, windowWidth, windowHeight, SDL_WINDOW_OPENGL|SDL_WINDOW_RESIZABLE);
	client->sdlWindowIDMap[SDL_GetWindowID(sdlWindow)] = this; // Register this window id with the client, pointing to this GraphicsWindow instance
	sdlglContext = SDL_GL_CreateContext(sdlWindow);

	// OSG
	osg_viewer = new osgViewer::Viewer();
	//sceneCamera = osg_viewer->getCamera();
	//sceneCamera->setClearColor(osg::Vec4(0, 0, 0, 1));
	osg_graphicsWindow = osg_viewer->setUpViewerAsEmbeddedInWindow(0,0,windowWidth,windowHeight);
	osg_viewer->realize();

	SDL_ShowCursor(0);

}

void GraphicsWindow::windowFocusGained(void* window) {
	if (window==this) {
		for (uint i=0; i<attachedToolWindows.size(); i++) {
			GraphicsAttachedToolWindow* toolWindow=attachedToolWindows.at(i);
			gtk_window_set_keep_above(GTK_WINDOW(toolWindow->gtkWindow), true);
		}
		if (mouseFollowWindow) {
			//gtk_widget_show(mouseFollowWindow);
			gtk_window_set_keep_above(GTK_WINDOW(mouseFollowWindow), true);
		}
	} else {
		SDL_RaiseWindow(sdlWindow);
	}
}

void GraphicsWindow::windowFocusLost(void* window) {
	if (window==this) {
		for (uint i=0; i<attachedToolWindows.size(); i++) {
			GraphicsAttachedToolWindow* toolWindow=attachedToolWindows.at(i);
			gtk_window_set_keep_above(GTK_WINDOW(toolWindow->gtkWindow), false);
		}
		if (mouseFollowWindow) {
			//gtk_widget_hide(mouseFollowWindow);
			gtk_window_set_keep_above(GTK_WINDOW(mouseFollowWindow), false);
		}
	}
}

void GraphicsWindow::groupFocusGained() {

}

void GraphicsWindow::groupFocusLost() {

}

GraphicsAttachedToolWindow* GraphicsWindow::newAttachedToolWindow(std::string newWindowTitle) {
	GraphicsAttachedToolWindow* _newToolWindow = new GraphicsAttachedToolWindow(this, newWindowTitle);
	attachedToolWindows.push_back(_newToolWindow);
	return _newToolWindow;
}

void GraphicsWindow::setMouseFollowWidget(GtkWidget* widget) {
	gtk_container_remove(GTK_CONTAINER(mouseFollowWindow), mouseFollowWidget);
	mouseFollowWidget = widget;
	gtk_container_add(GTK_CONTAINER(mouseFollowWindow), mouseFollowWidget);
	gtk_widget_show(mouseFollowWidget);
}

bool GraphicsWindow::mouseFollowWindowEnterNotifyCallback(GtkWidget* widget) {
	gtk_window_set_keep_above(GTK_WINDOW(widget), false);
	//gtk_widget_hide(widget);
	return false;
}
bool GraphicsWindow::mouseFollowWindowLeaveNotifyCallback(GtkWidget* widget) {
	//gtk_window_set_keep_above(GTK_WINDOW(widget), true);
	return false;
}

void GraphicsWindow::showMouseFollowWidget() {
	if (mouseFollowWindow) {
		printf("Mouse-following Widget is already visible\n");
	} else {
		//mouseFollowWindow = gtk_window_new(GTK_WINDOW_POPUP);
		mouseFollowWindow = gtk_window_new(GTK_WINDOW_TOPLEVEL);
		gtk_window_set_decorated(GTK_WINDOW(mouseFollowWindow), false);
		gtk_window_set_skip_taskbar_hint(GTK_WINDOW(mouseFollowWindow), true);
		gtk_window_set_keep_above(GTK_WINDOW(mouseFollowWindow), true);
		//gtk_widget_set_opacity(mouseFollowWindow, 0.5);
		gtk_widget_set_visual(mouseFollowWindow, gdk_screen_get_rgba_visual(gdk_screen_get_default()));
		gtk_widget_override_background_color(mouseFollowWindow, GTK_STATE_FLAG_NORMAL, new GdkRGBA{0.2,0.2,0.2,0.5});
		gtk_widget_override_color(mouseFollowWindow, GTK_STATE_FLAG_NORMAL, new GdkRGBA{1,1,1,1});
		gtk_window_resize(GTK_WINDOW(mouseFollowWindow),128,32);
		//gtk_window_move(GTK_WINDOW(mouseFollowWindow),960,540);
		gtk_container_add(GTK_CONTAINER(mouseFollowWindow), mouseFollowWidget);
		gtk_widget_show_all(mouseFollowWindow);
		//UCallback* callback = UCLASSCALLBACK_SWAPPED(this, &GraphicsWindow::mouseFollowWindowEnterNotifyCallback, mouseFollowWindow);
		g_signal_connect(mouseFollowWindow, "enter-notify-event", G_CALLBACK(ucallback_call_2), UCLASSCALLBACK(this, &GraphicsWindow::mouseFollowWindowEnterNotifyCallback, NULL) );
		g_signal_connect(mouseFollowWindow, "leave-notify-event", G_CALLBACK(ucallback_call_2), UCLASSCALLBACK(this, &GraphicsWindow::mouseFollowWindowLeaveNotifyCallback, NULL) );

	}
}

void GraphicsWindow::hideMouseFollowWidget() {
	gtk_container_remove(GTK_CONTAINER(mouseFollowWindow), mouseFollowWidget);
	gtk_widget_destroy(mouseFollowWindow);
}

void GraphicsWindow::setSceneData(osg::Node* newSceneRoot) {
	osg_viewer->setSceneData(newSceneRoot);
}

osg::Camera* GraphicsWindow::getCamera() {
	return osg_viewer->getCamera();
}

void GraphicsWindow::handleEvent(SDL_Event event) {
	switch (event.type) {
	case (SDL_QUIT):
		break;
	case (SDL_KEYDOWN):
		switch (event.key.keysym.sym) {
		case (SDLK_ESCAPE):
			break;
		}
		break;
	case (SDL_MOUSEMOTION):
		if (mouseFollowWindow) {
			gtk_window_set_keep_above(GTK_WINDOW(mouseFollowWindow), true);
			gtk_window_move(GTK_WINDOW(mouseFollowWindow),lastWindowX+event.motion.x+32,lastWindowY+event.motion.y+48);
		}
		break;
	case (SDL_WINDOWEVENT):
		switch (event.window.event) {
		case SDL_WINDOWEVENT_FOCUS_GAINED:
			focused=true;
			windowFocusGained(this);
			break;
		case SDL_WINDOWEVENT_FOCUS_LOST:
			focused=false;
			windowFocusLost(this);
			break;
		}

    	int x,y;
		SDL_GetWindowPosition(sdlWindow, &x, &y);
		if (x!=9 || y!=8) { // Fix for strange SDL2 behavior reporting position of (9,8) during any resize - Are these numbers the same on all Desktop Environments or just mine?
			/*int xMovement, yMovement;
			xMovement = x-lastWindowX;
			yMovement = y-lastWindowY;
			printf("Moved relatively by (%d,%d)\n",xMovement,yMovement);
			for (uint i=0; i<childToolWindows.size(); i++) { // Move all attached ToolWindows relatively
				ToolWindow* toolWindow=childToolWindows.at(i);
				int gx,gy;
				gtk_window_get_position(GTK_WINDOW(toolWindow->gtkWindow), &gx, &gy);
				gtk_window_move(GTK_WINDOW(toolWindow->gtkWindow), gx+xMovement, gy+yMovement);
				//gtk_window_present(GTK_WINDOW(toolWindow->gtkWindow));
			}*/
			lastWindowX = x;
			lastWindowY = y;

			windowMovingTimer=10; // Tell ToolWindow to ignore movement events for next 10 frames
			for (uint i=0; i<attachedToolWindows.size(); i++) { // Move all attached ToolWindows relatively
				GraphicsAttachedToolWindow* toolWindow=attachedToolWindows.at(i);
				gtk_window_move(GTK_WINDOW(toolWindow->gtkWindow), x+toolWindow->relativeWindowX, y+toolWindow->relativeWindowY);
			}
			while (gtk_events_pending()) {  // Process these events as soon as possible
				gtk_main_iteration();
			}
		}
    	SDL_GetWindowSize(sdlWindow, &windowWidth, &windowHeight);
    	//printf("Resized to %dx%d\n",windowWidth,windowHeight);
    	osg_graphicsWindow->resized(0,0,windowWidth,windowHeight);
    	break;
	}

	if (eventHandler) {
		//callback_call<void>((void*)(&event), eventHandler);
		//ucallback_call(&event, eventHandler);
		eventHandler->call(&event);
	}

}

void GraphicsWindow::iteration() {
	if (windowMovingTimer>0) { windowMovingTimer-=1; }
	//if (focusChangingTimer>0) { focusChangingTimer-=1; }
	SDL_GL_MakeCurrent(sdlWindow, sdlglContext);

	/*if (focused && keystateHandler) {
		const Uint8* keystate = SDL_GetKeyboardState(NULL);
		//callback_call(&keystate, keystateHandler);
		keystateHandler->call(&keystate);
	}*/

	if (idleFunc) {
		idleFunc->call(NULL);
	}

	osg_viewer->frame();
	SDL_GL_SwapWindow(sdlWindow);
}

void GraphicsWindow::setEventHandler(UCallback* _eventHandler) {
	eventHandler = _eventHandler;
}

/*void GraphicsWindow::setKeystateHandler(UCallback* _keystateHandler) {
	keystateHandler = _keystateHandler;
}*/

void GraphicsWindow::setIdleFunction(UCallback* _idleFunc) {
	idleFunc = _idleFunc;
}

void GraphicsWindow::getSize(int* width, int* height) {
	SDL_GetWindowSize(sdlWindow, width, height);
}

} /* namespace Client */
