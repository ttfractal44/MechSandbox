/*
 * GraphicsAttachedToolWindow.h
 *
 *  Created on: Mar 30, 2015
 *      Author: theron
 */

#include "Client.h"

#ifndef GRAPHICSATTACHEDTOOLWINDOW_H_
#define GRAPHICSATTACHEDTOOLWINDOW_H_

#include "ToolWindow.h"

namespace Client {

class GraphicsWindow;

class GraphicsAttachedToolWindow: public ToolWindow {
	friend class GraphicsWindow;
public:
	GraphicsAttachedToolWindow(GraphicsWindow* parent, std::string newWindowTitle);
	virtual ~GraphicsAttachedToolWindow();
	void configureEvent();
	void focusOutEvent();
	void focusInEvent();
private:
	GraphicsWindow* parentGraphicsWindow;
	int relativeWindowX, relativeWindowY;
	int lastWindowX, lastWindowY;
};

} /* namespace Client */

#endif /* GRAPHICSATTACHEDTOOLWINDOW_H_ */
