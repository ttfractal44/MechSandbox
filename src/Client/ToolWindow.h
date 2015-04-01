/*
 * ToolWindow.h
 *
 *  Created on: Mar 14, 2015
 *      Author: theron
 */

#include "Client.h"

#ifndef TOOLWINDOW_H_
#define TOOLWINDOW_H_

namespace Client {

class Client;

class ToolWindow {
	friend class GraphicsWindow;
	friend class GraphicsAttachedToolWindow;
public:
	ToolWindow(Client* _client, std::string newWindowTitle);
	virtual ~ToolWindow();
	void show();
	void setWidget(GtkWidget* widget);
	void iteration();
private:
	Client* client;
	GtkWidget* gtkWindow;
};

} /* namespace Client */

#endif /* TOOLWINDOW_H_ */
