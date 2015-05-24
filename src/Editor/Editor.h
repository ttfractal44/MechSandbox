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

#include "../Model/Drawing/Drawing.h"
#include "../Model/Drawing/Point.h"
#include "../Model/Drawing/Line.h"
#include "../Model/Drawing/Circle.h"
#include "../Model/Drawing/Union.h"
#include "../Model/Drawing/CopySequence.h"

#include "mathutil.h"

#include <osg/MatrixTransform>

namespace Editor {

struct Tool {
	std::string name;
	std::string prettyname;
	GtkWidget* toolbarbutton=NULL;
};

inline Tool newTool(std::string name, std::string prettyname) {
	Tool newtool;
	newtool.name = name;
	newtool.prettyname = prettyname;
	return newtool;
}

class Editor {
public:
	Editor(Client::Client* _client, Model::Drawing::Drawing* _drawing);
	virtual ~Editor();
	void createTools();
	bool requestClose();
	void createCmdLineWindow();
	void createToolBarWindow();
	bool toolButtonCallback(GtkWidget* widget, Tool* tool);
	void setTool(Tool* tool);
	osg::Vec2 getDrawingCoordinatesFromPixel(int px, int py);
	void handleGraphicsWindowEvent(SDL_Event* event);
	void handleGraphicsWindowKeystate(const Uint8** keystate);
	void iteration();
protected:
	//std::string currentTool;
	Tool* currentTool;
	std::vector<Tool> tools;
	Tool* defaultTool;
private:
	//std::vector<std::string> toolnames;
	std::string windowname;
	Client::Client* client;
	Model::Drawing::Drawing* drawing;
	Client::GraphicsWindow* graphics;
	osg::Group* osggroup;
	osg::Group* visualization;
	osg::Geode* cursor;
	float cursorScale;
	float snapRadius;
	osg::MatrixTransform* cursorTransform;
	void setCursorPosition(osg::Vec2 pos);
	osg::Vec2 pos1;
	osg::Vec2 pos2;
	osg::Vec2* curposP;
	Model::Drawing::Element* currentDrawElement;
	bool nowdrawing=false;
};

class Foo {

};

} /* namespace Editor */

#endif /* EDITOR_H_ */
