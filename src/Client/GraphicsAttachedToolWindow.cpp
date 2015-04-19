/*
 * GraphicsAttachedToolWindow.cpp
 *
 *  Created on: Mar 30, 2015
 *      Author: theron
 */

#include "GraphicsAttachedToolWindow.h"

namespace Client {

bool configureCallback(GraphicsAttachedToolWindow* _this) { _this->configureEvent(); return false;}
bool focusOutCallback(GraphicsAttachedToolWindow* _this) { _this->focusOutEvent(); return false;}
bool focusInCallback(GraphicsAttachedToolWindow* _this) { _this->focusInEvent(); return false;}

GraphicsAttachedToolWindow::GraphicsAttachedToolWindow(GraphicsWindow* parent, std::string newWindowTitle) : ToolWindow(parent->client, newWindowTitle) {
	relativeWindowX=0;
	relativeWindowY=0;
	lastWindowX=0;
	lastWindowY=0;
	parentGraphicsWindow = parent;
	gtk_window_set_skip_taskbar_hint(GTK_WINDOW(gtkWindow), true); // Do not show toolbars in the taskbar
	gtk_widget_add_events(GTK_WIDGET(gtkWindow), GDK_CONFIGURE); // Allows tracking of window movements for updating relative position
	gtk_widget_add_events(GTK_WIDGET(gtkWindow), GDK_FOCUS_CHANGE);
	g_signal_connect_swapped(gtkWindow, "configure-event", G_CALLBACK(configureCallback), this);
	g_signal_connect_swapped(gtkWindow, "focus-out-event", G_CALLBACK(focusOutCallback), this);
	g_signal_connect_swapped(gtkWindow, "focus-in-event", G_CALLBACK(focusInCallback), this);
}

void GraphicsAttachedToolWindow::configureEvent() {
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

void GraphicsAttachedToolWindow::focusOutEvent() {
	parentGraphicsWindow->windowFocusLost(this);
}

void GraphicsAttachedToolWindow::focusInEvent() {
	parentGraphicsWindow->windowFocusGained(this);
}

GraphicsAttachedToolWindow::~GraphicsAttachedToolWindow() {
	// TODO Auto-generated destructor stub
}

} /* namespace Client */
