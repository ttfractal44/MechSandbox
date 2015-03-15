/*
 * ToolWindow.h
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#ifndef TOOLWINDOW_H_
#define TOOLWINDOW_H_

#include <gtk/gtk.h>
#include <gdk/gdk.h>

namespace Client {
class ToolWindow;
}

#include "GraphicsWindow.h"

namespace Client {

class ToolWindow {
	friend class GraphicsWindow;
public:
	ToolWindow();
	ToolWindow(GraphicsWindow* parent);
	virtual ~ToolWindow();
	void realize();
	void iteration();
	void configureEvent();
	void focusOutEvent();
	void focusInEvent();
private:
	GtkWidget* gtkWindow;
	GraphicsWindow* parentGraphicsWindow;
	int relativeWindowX, relativeWindowY;
	int lastWindowX, lastWindowY;
};

} /* namespace Client */

#endif /* TOOLWINDOW_H_ */
