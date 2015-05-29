/*
 * Client.h
 *
 *  Created on: Feb 27, 2015
 *      Author: theron
 */

#ifndef CLIENT_H_
#define CLIENT_H_

#include "../misc/config.h"
#include "../misc/utils.h"
#include "libraries.h"

#include "GraphicsWindow.h"
#include "ToolWindow.h"

namespace Client {

class Client {
	friend class GraphicsWindow;
	friend class ToolWindow;
	friend class GraphicsAttachedToolWindow;
public:
	virtual ~Client();
	Client();
	void initializeGraphics();
	void destroyGraphics();
	void main();
	void quit();
	GraphicsWindow* newGraphicsWindow(std::string newWindowTitle, int newWindowWidth, int newWindowHeight);
	ToolWindow* newToolWindow(std::string newWindowTitle);
private:
	std::vector<GraphicsWindow*> graphicsWindows;
	std::map<Uint32, GraphicsWindow*> sdlWindowIDMap;
	std::vector<ToolWindow*> toolWindows;
	bool runmain;
};

void destroyGraphicsCallback(Client* _this);

} /* namespace Client */

#endif /* CLIENT_H_ */
