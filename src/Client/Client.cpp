/*
 * Client.cpp
 *
 *  Created on: Feb 27, 2015
 *      Author: theron
 */

#include "Client.h"

#include "GraphicsWindow.h"
#include "ToolWindow.h"

namespace Client {

Client::~Client() {
	// TODO Auto-generated destructor stub
}

Client::Client() {
	// TODO Auto-generated constructor stub
	runmain=false;
	/*graphics=false;
	quitClientOnDestroyGraphics=true;*/
}

void Client::destroyGraphics() {
	/*if (quitClientOnDestroyGraphics) {
		runmain=false;
	}
	graphics=false;*/
}

/*void destroyGraphicsCallback(Client* _this) {
	_this->destroyGraphics();
}

GdkDevice* lastdevice;

void gtkEventIntercept(GdkEvent* event) {
	printf("%d\n",event->type);
	//lastdevice = ((GdkEventKey*)event)
	gtk_main_do_event(event);
}*/

void Client::initializeGraphics() {

	SDL_Init(SDL_INIT_EVERYTHING);
	int argc = 0;
	gtk_init (&argc, NULL);


	/*window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_decorated(GTK_WINDOW(window), false);
	//gtk_window_set_skip_taskbar_hint(GTK_WINDOW(window), true);
	GdkScreen *screen = gtk_widget_get_screen(window);
	GdkVisual *visual = gdk_screen_get_rgba_visual(screen);
	gtk_widget_set_visual(window, visual);
	GdkRGBA windowColor = {0,0,0,0};
	gtk_widget_override_background_color(window, GTK_STATE_FLAG_NORMAL, &windowColor);
	gtk_window_set_default_size(GTK_WINDOW(window), config::defaultWindowWidth, config::defaultWindowHeight*1/3);
	gtk_window_set_title(GTK_WINDOW(window), config::windowTitle.c_str());
	Client* _this = this;
	g_signal_connect_swapped (window, "destroy", G_CALLBACK ( destroyGraphicsCallback ), _this);


	// SDL INITIALIZATION WITHIN GTK

	sdlWindow = SDL_CreateWindow(config::windowTitle.c_str(), SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, config::defaultWindowWidth, config::defaultWindowHeight, SDL_WINDOW_OPENGL|SDL_WINDOW_RESIZABLE);
	//sdlWindow = SDL_CreateWindowFrom((GDK_WINDOW_XID(GDK_WINDOW(window))));

	GtkWidget* overlayContainer = gtk_overlay_new();

	graphicsFrame = gtk_text_view_new();
	//graphicsFrame = gtk_gl_area_new();

	GdkRGBA color = {0,0,0,0};
	gtk_widget_override_background_color(graphicsFrame, GTK_STATE_FLAG_NORMAL, &color);

	color = {1,1,1,1};
	gtk_widget_override_color(graphicsFrame, GTK_STATE_FLAG_NORMAL, &color);

	gtk_container_add(GTK_CONTAINER(overlayContainer), graphicsFrame);

	interface = gtk_box_new(GTK_ORIENTATION_VERTICAL,1);

	gtk_overlay_add_overlay(GTK_OVERLAY(overlayContainer), interface);

	gtk_widget_show(interface);
	gtk_widget_show(graphicsFrame);
	gtk_widget_show(overlayContainer);

	gtk_container_add(GTK_CONTAINER(window), overlayContainer);
	//gtk_container_add(GTK_CONTAINER(window), interface);

	gtk_container_set_border_width (GTK_CONTAINER(interface), 10);

	GtkWidget *buttonBox;

	buttonBox = gtk_box_new(GTK_ORIENTATION_VERTICAL,3);

	GtkWidget *button1;
	GtkWidget *button2;
	GtkWidget *button3;

	gtk_container_add (GTK_CONTAINER(interface), buttonBox);

	button1 = gtk_button_new_with_label("Button 1");
	//gtk_container_add (GTK_CONTAINER(gtkWindow), button1);
	gtk_box_pack_start (GTK_BOX(buttonBox),button1,false,false,5);
	button2 = gtk_button_new_with_label("Button 2");
	//gtk_container_add (GTK_CONTAINER(gtkWindow), button2);
	gtk_box_pack_start (GTK_BOX(buttonBox),button2,false,false,5);
	button3 = gtk_button_new_with_label("Button 3");
	//gtk_container_add (GTK_CONTAINER(gtkWindow), button3);
	gtk_box_pack_start (GTK_BOX(buttonBox),button3,false,false,5);

	gtk_widget_show(button1);
	gtk_widget_show(button2);
	gtk_widget_show(button3);

	gtk_widget_show(buttonBox);

	//gtk_container_add (GTK_CONTAINER(window), interface);


	gtk_widget_show(window);
	graphics=true;

	gdk_event_handler_set ((GdkEventFunc)gtkEventIntercept, NULL, NULL);*/

}

GraphicsWindow* Client::newGraphicsWindow(std::string newWindowTitle, int newWindowWidth, int newWindowHeight) {
	GraphicsWindow* _newGraphicsWindow = new GraphicsWindow(this, newWindowTitle, newWindowWidth, newWindowHeight);
	_newGraphicsWindow->realize();
	graphicsWindows.push_back(_newGraphicsWindow);
	return _newGraphicsWindow;
}

ToolWindow* Client::newToolWindow(std::string newWindowTitle) {
	ToolWindow* _newToolWindow = new ToolWindow(this, newWindowTitle);
	toolWindows.push_back(_newToolWindow);
	return _newToolWindow;
}

void Client::main() {
	runmain=true;
	while (runmain) {

		while (gtk_events_pending()) {
			gtk_main_iteration();
		}
		for (uint i=0; i<toolWindows.size(); i++) {
			ToolWindow* toolWindow=toolWindows.at(i);
			toolWindow->iteration();
		}

		SDL_Event event;
		while (SDL_PollEvent(&event))
		{
			GraphicsWindow* graphicsWindow = sdlWindowIDMap[event.window.windowID];
			if (graphicsWindow) {
				graphicsWindow->handleEvent(event);
			} else {
				printf("Event received for unregistered SDL window!\n");  // Or global event... Perhaps check if windowID is NULL?
			}
		}
		for (uint i=0; i<graphicsWindows.size(); i++) {
			GraphicsWindow* graphicsWindow=graphicsWindows.at(i);
			graphicsWindow->iteration();
		}

	}

}

} /* namespace Client */
