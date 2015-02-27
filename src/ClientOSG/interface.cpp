/*
 * interface.cpp
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#include "interface.h"

namespace Client {

GtkWidget *gtkRealWindow;

GtkWidget *button1;

gboolean eventCallback(GtkWidget *widget, GdkEvent *event) {
	printf("Event detected %d\n%f,%f\n",event->type,((GdkEventButton*)event)->x,((GdkEventButton*)event)->y);
	return false;
}

gboolean eventProxyCallback(GtkWidget *widget, GdkEvent *event) {
	GdkEvent* newEvent = gdk_event_copy(event);
	((GdkEventMotion*)newEvent)->window = gtk_widget_get_window(gtkWindow);
	//gdk_event_put(newEvent);
	GdkDisplay* display = gdk_display_get_default();
	//gdk_display_put_event(display, newEvent);
	//gtk_widget_event(gtkWindow, newEvent);
	return false;
}

void initInterface() {

	int argc = 0;
	//char* argv[];

	gtk_init (&argc, NULL);

	gtkWindow = gtk_offscreen_window_new();
	//gtkWindow = gtk_window_new(GTK_WINDOW_TOPLEVEL);

	GdkRGBA color = {0,0,0,0};

	/*color.red = 0x0000;
	color.green = 0x0000;
	color.blue = 0x0000;
	color.alpha = 0x7FFF;*/

	//gtk_widget_modify_bg(gtkWindow, GTK_STATE_NORMAL, &color);

	gtk_widget_override_background_color(gtkWindow, GTK_STATE_FLAG_NORMAL, &color);

	//gtkWindow = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	//gtk_window_set_title (GTK_WINDOW (gtkWindow), "Window");

	gtk_window_set_default_size(GTK_WINDOW(gtkWindow), 1066, 600);
	gtk_container_set_border_width (GTK_CONTAINER(gtkWindow), 10);

	GtkWidget *buttonBox;

	buttonBox = gtk_box_new(GTK_ORIENTATION_VERTICAL,3);

//	GtkWidget *button1;
	GtkWidget *button2;
	GtkWidget *button3;

	//	g_signal_connect (window, "destroy", G_CALLBACK (gtk_main_quit), NULL);

	gtk_container_add (GTK_CONTAINER(gtkWindow), buttonBox);

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

	//gtk_widget_add_events(gtkWindow, GDK_POINTER_MOTION_MASK);
	//gtk_widget_add_events(gtkWindow, GDK_BUTTON_PRESS_MASK);
	gtk_widget_set_events(gtkWindow, GDK_ALL_EVENTS_MASK);

	gtk_widget_show(gtkWindow);

	//gtkWindowPixbuf = gtk_offscreen_window_get_pixbuf(GTK_OFFSCREEN_WINDOW(gtkWindow));

	g_signal_connect (gtkWindow, "event", G_CALLBACK (eventCallback), NULL);


	GtkWidget* gtkProxyWindow = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_default_size(GTK_WINDOW(gtkProxyWindow), 1066, 600);
	gtk_widget_set_events(gtkProxyWindow, GDK_ALL_EVENTS_MASK);
	gtk_widget_show(gtkProxyWindow);

	g_signal_connect (gtkProxyWindow, "event", G_CALLBACK (eventProxyCallback), NULL);

}

void updateInterface() {

	/*GdkEvent *event = new GdkEvent();


	//event->type = GDK_MOTION_NOTIFY;
	event->type = GDK_BUTTON_PRESS;

	//event->type = GDK_DESTROY;

	//((GdkEventMotion*)event)->x = 500.0;
	//((GdkEventMotion*)event)->y = 30.0;
	((GdkEventButton*)event)->x = 500.0;
	((GdkEventButton*)event)->y = 30.0;

	//((GdkEventMotion*)event)->state = 16;

	//((GdkEventMotion*)event)->window = gtk_widget_get_window(gtkWindow);
	((GdkEventButton*)event)->window = gtk_widget_get_window(gtkWindow);

	gtk_propagate_event(gtkWindow, event);*/

	if (gtk_events_pending()) {
		while (gtk_events_pending()) {
			gtk_main_iteration();
		}
		gtkWindowPixbuf = gtk_offscreen_window_get_pixbuf(GTK_OFFSCREEN_WINDOW(gtkWindow));
		GLuint width = gdk_window_get_width(gtk_widget_get_window(gtkWindow));
		GLuint height = gdk_window_get_height(gtk_widget_get_window(gtkWindow));
		interfaceImage->setImage(width, height, 1, GL_RGBA, GL_RGBA, GL_UNSIGNED_BYTE, gdk_pixbuf_get_pixels(gtkWindowPixbuf), osg::Image::USE_NEW_DELETE);
	}
}


} /* namespace Client */
