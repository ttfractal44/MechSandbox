/*
 * Client.h
 *
 *  Created on: Feb 27, 2015
 *      Author: theron
 */

#ifndef CLIENT_H_
#define CLIENT_H_

/*#include <gtk/gtk.h>
#include <gdk/gdk.h>
#include <osgViewer/Viewer>
#include <SDL2/SDL.h>
#include <assert.h>*/

#include "../misc/config.h"
#include "../misc/utils.h"

namespace Client {
class Client;
}

#include "GraphicsWindow.h"
#include "ToolWindow.h"

namespace Client {

class Client {
	friend class GraphicsWindow;
	friend class ToolWindow;
public:
	virtual ~Client();
	Client();
	void initializeGraphics();
	void destroyGraphics();
	void main();
	std::vector<GraphicsWindow*> graphicsWindows;
	std::map<Uint32, GraphicsWindow*> sdlWindowIDMap;
	std::vector<ToolWindow*> toolWindows;
private:
	bool runmain;
};

void destroyGraphicsCallback(Client* _this);

} /* namespace Client */

#endif /* CLIENT_H_ */
