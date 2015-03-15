/*
 * Client.h
 *
 *  Created on: Feb 27, 2015
 *      Author: theron
 */

#ifndef CLIENT_H_
#define CLIENT_H_

#include <gtk/gtk.h>
#include <gdk/gdk.h>
#include <gdk/gdkx.h>
//#include <gtkgl/gtkglarea.h>
#include <osgViewer/Viewer>
#include <SDL2/SDL.h>
#include <assert.h>

#include "../misc/config.h"
#include "../misc/utils.h"

namespace Client {

class Client {
public:
	virtual ~Client();
	Client();
	void initializeGraphics();
	void destroyGraphics();
	void main();
	bool quitClientOnDestroyGraphics;
	GtkWidget* interface;
	GtkWidget* graphicsFrame;
private:
	GtkWidget* window;
	SDL_Window* sdlWindow;
	bool runmain;
	bool graphics;
};

void destroyGraphicsCallback(Client* _this);

} /* namespace Client */

#endif /* CLIENT_H_ */
