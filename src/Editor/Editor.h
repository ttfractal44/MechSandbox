/*
 * Editor.h
 *
 *  Created on: Apr 30, 2015
 *      Author: theron
 */

#ifndef EDITOR_H_
#define EDITOR_H_

#include "../Model/Drawing/Drawing.h"
#include "../Client/GraphicsWindow.h"
#include "../Client/ToolWindow.h"
#include "../Client/GraphicsAttachedToolWindow.h"
#include "../Client/Client.h"
#include "../misc/config.h"
#include "../misc/utils.h"
#include "../misc/UCallback.h"

namespace Editor {

class Editor {
public:
	Editor(Client::Client* _client, Model::Drawing::Drawing* _drawing);
	virtual ~Editor();
	bool requestClose();
	void createCmdLineWindow();
	void createToolBarWindow();
	void setTool(std::string toolName);
	void setToolStrP(std::string* toolName);
	void handleGraphicsWindowEvent(SDL_Event* event);
	void handleGraphicsWindowKeystate(const Uint8** keystate);
protected:
	std::string currentTool;
private:
	std::string windowname;
	Client::Client* client;
	Model::Drawing::Drawing* drawing;
	Client::GraphicsWindow* graphics;
};

class Foo {

};

} /* namespace Editor */

#endif /* EDITOR_H_ */
