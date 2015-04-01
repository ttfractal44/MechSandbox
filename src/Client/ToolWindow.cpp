/*
 * ToolWindow.cpp
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#include "ToolWindow.h"

namespace Client {

ToolWindow::ToolWindow(Client* _client, std::string newWindowTitle) {
	client = _client;
	gtkWindow = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title(GTK_WINDOW(gtkWindow), newWindowTitle.c_str());
}

void ToolWindow::setWidget(GtkWidget* widget) {
	gtk_container_add(GTK_CONTAINER(gtkWindow), widget);
}

void ToolWindow::show() {
	gtk_widget_show_all(gtkWindow);
}

void ToolWindow::iteration() {
	// This probably will never actually do anything
}

ToolWindow::~ToolWindow() {
	// TODO Auto-generated destructor stub
}

} /* namespace Client */
