/*
 * interface.cpp
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#include "interface.h"

namespace Client {

GtkWidget *gtkRealWindow;

void initInterface() {

	int argc = 0;
	//char* argv[];

	gtk_init (&argc, NULL);

	gtkWindow = gtk_offscreen_window_new();

	GdkRGBA color = {0,0,0,0};

	/*color.red = 0x0000;
	color.green = 0x0000;
	color.blue = 0x0000;
	color.alpha = 0x7FFF;*/

	//gtk_widget_modify_bg(gtkWindow, GTK_STATE_NORMAL, &color);

	gtk_widget_override_background_color(gtkWindow, GTK_STATE_FLAG_NORMAL, &color);

	//gtkWindow = gtk_window_new(GTK_WINDOW_TOPLEVEL);

	//gtkWindow = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	//gtk_window_set_title (GTK_WINDOW (gtkWindow), "Window");

	gtk_window_set_default_size(GTK_WINDOW(gtkWindow), 1066, 600);
	gtk_container_set_border_width (GTK_CONTAINER(gtkWindow), 10);

	GtkWidget *buttonBox;

	buttonBox = gtk_box_new(GTK_ORIENTATION_VERTICAL,3);

	GtkWidget *button1;
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

	gtk_widget_show(gtkWindow);

	gtkWindowPixbuf = gtk_offscreen_window_get_pixbuf(GTK_OFFSCREEN_WINDOW(gtkWindow));

}

void updateInterface() {
	if (gtk_events_pending()) {
		//while (gtk_events_pending()) {
			gtk_main_iteration();
		//}
		gtkWindowPixbuf = gtk_offscreen_window_get_pixbuf(GTK_OFFSCREEN_WINDOW(gtkWindow));
		GLuint width = gdk_window_get_width(gtk_widget_get_window(gtkWindow));
		GLuint height = gdk_window_get_height(gtk_widget_get_window(gtkWindow));
		/*glBindTexture(GL_TEXTURE_2D, interfaceTexture);
		glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, gdk_pixbuf_get_pixels(gtkWindowPixbuf));
		g_object_unref(gtkWindowPixbuf);*/
		interfaceImage->setImage(width, height, 1, GL_RGBA, GL_RGBA, GL_UNSIGNED_BYTE, gdk_pixbuf_get_pixels(gtkWindowPixbuf), osg::Image::USE_NEW_DELETE);
	}

}


} /* namespace Client */
