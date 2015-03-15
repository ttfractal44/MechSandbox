/*
 * GraphicsWindow.h
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#ifndef GRAPHICSWINDOW_H_
#define GRAPHICSWINDOW_H_

#include <osgViewer/Viewer>
#include <SDL2/SDL.h>

namespace Client {
class GraphicsWindow;
}

#include "Client.h"
#include "ToolWindow.h"

namespace Client {

class GraphicsWindow {
	friend class ToolWindow;
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
	void handleEvent(SDL_Event event);
private:
	Client* client;
	std::vector<ToolWindow*> childToolWindows;
	SDL_Window* sdlWindow;
	SDL_GLContext sdlglContext;
	int lastWindowX, lastWindowY;
	int windowMovingTimer;
	osgViewer::Viewer* osg_viewer;
	osgViewer::GraphicsWindowEmbedded* osg_graphicsWindow;
	//osg::Group* sceneRoot;
};

} /* namespace Client */

#endif /* GRAPHICSWINDOW_H_ */
