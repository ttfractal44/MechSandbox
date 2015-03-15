/*
 * ToolWindow.cpp
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#include "ToolWindow.h"

namespace Client {

ToolWindow::ToolWindow() {
	parentGraphicsWindow = NULL;
	gtkWindow = NULL;
	relativeWindowX = 0;
	relativeWindowY = 0;
	lastWindowX=0;
	lastWindowY=0;
}

ToolWindow::ToolWindow(GraphicsWindow* parent) {
	parentGraphicsWindow = parent;
	gtkWindow = NULL;
	relativeWindowX = 0;
	relativeWindowY = 0;
	lastWindowX=0;
	lastWindowY=0;
}

void configureCallback(ToolWindow* _this) { _this->configureEvent(); }
void focusOutCallback(ToolWindow* _this) { _this->focusOutEvent(); }
void focusInCallback(ToolWindow* _this) { _this->focusInEvent(); }

void ToolWindow::configureEvent() {
	//printf("Configured!\n");
	int gx,gy;
	gtk_window_get_position(GTK_WINDOW(gtkWindow), &gx, &gy);
	if (parentGraphicsWindow && parentGraphicsWindow->windowMovingTimer==0 && (gx!=lastWindowX || gy!=lastWindowY) ) {
		relativeWindowX = gx - parentGraphicsWindow->lastWindowX;
		relativeWindowY = gy - parentGraphicsWindow->lastWindowY;
	}
	lastWindowX = gx;
	lastWindowY = gy;
}

void ToolWindow::focusOutEvent() {
	printf("Lost focus\n");
}

void ToolWindow::focusInEvent() {
	printf("Gained focus\n");
	for (uint i=0; i<parentGraphicsWindow->childToolWindows.size(); i++) {
		ToolWindow* toolWindow=parentGraphicsWindow->childToolWindows.at(i);
		gtk_window_set_keep_above(GTK_WINDOW(toolWindow->gtkWindow), true);
	}
}

void ToolWindow::realize() {
	gtkWindow = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_skip_taskbar_hint(GTK_WINDOW(gtkWindow), true); // Do not show toolbars in the taskbar
	gtk_widget_add_events(GTK_WIDGET(gtkWindow), GDK_CONFIGURE); // Allows tracking of window movements for updating relative position
	gtk_widget_add_events(GTK_WIDGET(gtkWindow), GDK_FOCUS_CHANGE);
	g_signal_connect_swapped(gtkWindow, "configure-event", G_CALLBACK(configureCallback), this);
	g_signal_connect_swapped(gtkWindow, "focus-out-event", G_CALLBACK(focusOutCallback), this);
	g_signal_connect_swapped(gtkWindow, "focus-in-event", G_CALLBACK(focusInCallback), this);
	gtk_widget_show(gtkWindow);
}

void ToolWindow::iteration() {
	// This probably will never actually do anything
}

ToolWindow::~ToolWindow() {
	// TODO Auto-generated destructor stub
}

} /* namespace Client */
