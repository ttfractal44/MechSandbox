/*
 * GraphicsWindow.h
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#include "Client.h"

#ifndef GRAPHICSWINDOW_H_
#define GRAPHICSWINDOW_H_

#include "GraphicsAttachedToolWindow.h"

#include "../misc/UCallback.h"
#include "../misc/utils.h"

namespace Client {

class GraphicsWindow {
	friend class ToolWindow;
	friend class GraphicsAttachedToolWindow;
public:
	GraphicsWindow(Client* _client, std::string newWindowTitle, int newWindowWidth, int newWindowHeight);
	virtual ~GraphicsWindow();
	bool quitClientOnDestroy;
	std::string windowTitle;
	int windowWidth;
	int windowHeight;
	void realize();
	void iteration();
	void setSceneData(osg::Node* newSceneRoot);
	osg::Camera* getCamera();
	void handleEvent(SDL_Event event);
	GraphicsAttachedToolWindow* newAttachedToolWindow(std::string newWindowTitle);
	void setMouseFollowWidget(GtkWidget* widget);
	bool mouseFollowWindowEnterNotifyCallback(GtkWidget* widget);
	bool mouseFollowWindowLeaveNotifyCallback(GtkWidget* widget);
	void showMouseFollowWidget();
	void hideMouseFollowWidget();
	void setEventHandler(UCallback* _eventHandler);
	//void setKeystateHandler(UCallback* _keystateHandler);
	void setIdleFunction(UCallback* _idleFunc);
	void getSize(int* width, int* height);
	GtkWidget* mouseFollowWindow;
private:
	Client* client;
	std::vector<GraphicsAttachedToolWindow*> attachedToolWindows;

	GtkWidget* mouseFollowWidget;
	SDL_Window* sdlWindow;
	SDL_GLContext sdlglContext;
	int lastWindowX, lastWindowY;
	int windowMovingTimer;
	osgViewer::Viewer* osg_viewer;
	osgViewer::GraphicsWindowEmbedded* osg_graphicsWindow;
	//osg::Group* sceneRoot;
	void groupFocusLost();
	void groupFocusGained();
	void windowFocusLost(void* window);
	void windowFocusGained(void* window);
	//bool focused;
	//int focusChangingTimer;
	//void* lastFocused; // Do not dereference!
	//void* secondLastFocused; // Do not dereference!
	uint focusCount=0;
	UCallback* eventHandler;
	UCallback* idleFunc;
	bool focused;
};

} /* namespace Client */

#endif /* GRAPHICSWINDOW_H_ */
