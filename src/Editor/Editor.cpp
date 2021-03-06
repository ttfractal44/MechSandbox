/*
 * Editor.cpp
 *
 *  Created on: Apr 30, 2015
 *      Author: theron
 */

#include "Editor.h"

namespace Editor {

Editor::Editor(Client::Client* _client, Model::Drawing::Drawing* _drawing) {
	client = _client;
	drawing = _drawing;
	windowname = drawing->name;
	graphics = client->newGraphicsWindow(windowname, config::defaultWindowWidth, config::defaultWindowHeight);
	osg::Camera* camera = graphics->getCamera();
	camera->setViewMatrixAsLookAt(osg::Vec3(0,0,4),osg::Vec3(0,0,0),osg::Vec3(0,1,0));
	osggroup = new osg::Group();
	osggroup->addChild(drawing->osggroup);
	visualization = new osg::Group();
	osggroup->addChild(visualization);
	graphics->setSceneData(osggroup);

	mouseWidget = gtk_label_new("_");
	graphics->showMouseFollowWidget();
	graphics->setMouseFollowWidget(mouseWidget);

	cursor = new osg::Geode();
	osg::ref_ptr<osg::Geometry> cursorgeometry = new osg::Geometry();
	osg::ref_ptr<osg::Vec2Array> cursorverts = new osg::Vec2Array();

	cursorScale = 0.02;

	snapRadius = 0.04;

	cursorverts->push_back(osg::Vec2( 0, 0 ));
	cursorverts->push_back(osg::Vec2(-1, -1));
	cursorverts->push_back(osg::Vec2( 1, -1));
	cursorverts->push_back(osg::Vec2( 1,  1));
	cursorverts->push_back(osg::Vec2(-1,  1));
	cursorverts->push_back(osg::Vec2(-1000, 0));
	cursorverts->push_back(osg::Vec2( 1000, 0));
	cursorverts->push_back(osg::Vec2( 0, -1000));
	cursorverts->push_back(osg::Vec2( 0,  1000));

	cursorgeometry->setVertexArray(cursorverts);

	osg::ref_ptr<osg::DrawElementsUInt> cursordrawelements1 = new osg::DrawElementsUInt(osg::PrimitiveSet::LINE_LOOP);

	cursordrawelements1->push_back(1);
	cursordrawelements1->push_back(2);
	cursordrawelements1->push_back(3);
	cursordrawelements1->push_back(4);

	cursorgeometry->addPrimitiveSet(cursordrawelements1);

	osg::ref_ptr<osg::DrawElementsUInt> cursordrawelements2 = new osg::DrawElementsUInt(osg::PrimitiveSet::LINES);

	cursordrawelements2->push_back(0);
	cursordrawelements2->push_back(5);
	cursordrawelements2->push_back(0);
	cursordrawelements2->push_back(6);
	cursordrawelements2->push_back(0);
	cursordrawelements2->push_back(7);
	cursordrawelements2->push_back(0);
	cursordrawelements2->push_back(8);

	cursorgeometry->addPrimitiveSet(cursordrawelements2);

	cursorTransform = new osg::MatrixTransform();

	cursor->addDrawable(cursorgeometry);

	cursorTransform->addChild(cursor);

	osggroup->addChild(cursorTransform);

	graphics->setEventHandler(UCLASSCALLBACK_VOID(this, &Editor::Editor::handleGraphicsWindowEvent, NULL));
	//graphics->setKeystateHandler(UCLASSCALLBACK_VOID(this, &Editor::Editor::handleGraphicsWindowKeystate, NULL));
	graphics->setIdleFunction(UCLASSCALLBACK_VOID(this, &Editor::Editor::iteration, NULL));

	//createCmdLineWindow();

	//toolnames = {"point", "line", "circle", "union", "copysequence"};

	createTools();

	createToolBarWindow();

}


Editor::~Editor() {
	// TODO Auto-generated destructor stub
}

void Editor::createTools() {
	if (tools.size()!=0) {
		printf("Tools are already registered.\n");
		return;
	}
	tools.push_back(newTool("select", "Select"));
	tools.push_back(newTool("delete", "Delete"));
	tools.push_back(newTool("point", "Point"));
	tools.push_back(newTool("line", "Line"));
	tools.push_back(newTool("circle", "Circle"));
	tools.push_back(newTool("union", "Union"));
	tools.push_back(newTool("copysequence", "Copy Sequence"));
	defaultTool = &tools.at(0);
	currentTool = defaultTool;
	setTool(currentTool);
}

bool Editor::requestClose() {
	printf("Editor %p has been asked to close\n",this);
	return true;
}

void Editor::createCmdLineWindow() {

	GtkWidget* cmdline = gtk_box_new(GTK_ORIENTATION_VERTICAL, 2);
	GtkWidget* cmdline_entry = gtk_entry_new();
	GtkWidget* cmdline_output = gtk_text_view_new();

	g_object_set(cmdline_output, "editable", false, NULL);
	g_object_set(cmdline_output, "cursor-visible", false, NULL);
	//g_object_set(cmdline_output, "monospace", true, NULL);
	g_object_set(cmdline_output, "wrap-mode", GTK_WRAP_WORD, NULL);

	gtk_container_add(GTK_CONTAINER(cmdline), cmdline_output);
	gtk_container_add(GTK_CONTAINER(cmdline), cmdline_entry);

	//Client::ToolWindow* cmdlinewindow = graphics->newAttachedToolWindow(windowname+": "+"Command line");
	Client::ToolWindow* cmdlinewindow = client->newToolWindow(windowname+": "+"Command line");
	cmdlinewindow->setWidget(cmdline);
	gtk_widget_show_all(cmdline);
	cmdlinewindow->show();

}

void Editor::createToolBarWindow() {

	GtkWidget* toolbar = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 2);

	/*GtkWidget* openCmdLineButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(openCmdLineButton), "CMD");
	gtk_container_add(GTK_CONTAINER(toolbar), openCmdLineButton);
	g_signal_connect(openCmdLineButton, "clicked", G_CALLBACK(ucallback_call), UCLASSCALLBACK_VOID(this, &Editor::createCmdLineWindow, NULL) );*/

	GtkWidget* debugDrawingPrintButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(debugDrawingPrintButton), "Drawing Debug");
	gtk_container_add(GTK_CONTAINER(toolbar), debugDrawingPrintButton);
	g_signal_connect(debugDrawingPrintButton, "clicked", G_CALLBACK(ucallback_call), UCLASSCALLBACK_VOID(drawing, &Model::Drawing::Drawing::debugPrintStructure, NULL) );

	GtkWidget* debugDrawingUpdateAllButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(debugDrawingUpdateAllButton), "Update All");
	gtk_container_add(GTK_CONTAINER(toolbar), debugDrawingUpdateAllButton);
	g_signal_connect(debugDrawingUpdateAllButton, "clicked", G_CALLBACK(ucallback_call), UCLASSCALLBACK_VOID(drawing, &Model::Drawing::Drawing::updateAllNoArgs, NULL) );

	for (uint i=0; i<tools.size(); i++) {
		Tool* tool = &tools.at(i);
		tool->toolbarbutton = gtk_toggle_button_new_with_label(tool->prettyname.c_str());
		//gtk_button_set_label(GTK_BUTTON(newToolButton), toolname.c_str());
		//g_set_property()
		gtk_button_set_relief(GTK_BUTTON(tool->toolbarbutton), GTK_RELIEF_NONE);
		gtk_container_add(GTK_CONTAINER(toolbar), tool->toolbarbutton);
		gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(tool->toolbarbutton), (tool==currentTool));
		g_signal_connect(tool->toolbarbutton, "toggled", G_CALLBACK(ucallback_call), UCLASSCALLBACK(this, &Editor::toolButtonCallback, tool ) );
	}

	Client::ToolWindow* toolbarwindow = graphics->newAttachedToolWindow(windowname+": "+"Toolbar");
	toolbarwindow->setWidget(toolbar);
	//InstanceCallData<Editor>* call_data;
	//call_data = (new InstanceCallData<Editor>{this, &Editor::Editor::requestClose});
	//toolbarwindow->setCloseFunction(G_CALLBACK(call_instance_member<Editor>), (new InstanceCallData<Editor>{this, &Editor::Editor::requestClose}));
	//toolbarwindow->setCloseFunction(G_CALLBACK(call_instance_member<Editor>), INSTANCE_CALLBACK(Editor, this, &Editor::Editor::requestClose));
	gtk_widget_show_all(toolbar);
	toolbarwindow->show();

}

bool Editor::toolButtonCallback(GtkWidget* widget, Tool* tool) {
	/*printf("%d\n", (uint)event->type);
	uint a = GDK_SETTING ;*/

	/*if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(tool->toolbarbutton))) {
		if (tool!=currentTool) { // Do nothing if this is the current tool button being activated
			Editor::setTool(tool);
			for (uint i=0; i<tools.size(); i++) {
				Tool* itool = &tools.at(i);
				gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(itool->toolbarbutton), (itool==tool));
			}
		}
	} else { // The user un-clicked the current tool: Return to default
		if (tool==defaultTool && currentTool==defaultTool) { // Cannot unclick the default tool
			gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(tool->toolbarbutton), true);
		} else {
			gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(defaultTool->toolbarbutton), true);
			gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(tool->toolbarbutton), false);
			Editor::setTool(defaultTool);
		}
	}*/
	if (tool==defaultTool) {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(tool->toolbarbutton))) {
			Editor::setTool(defaultTool);
			for (uint i=0; i<tools.size(); i++) {
				Tool* itool = &tools.at(i);
				if (itool!=currentTool) {
					gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(itool->toolbarbutton), false);
				}
			}
		} else {
			if (currentTool==defaultTool) {
				gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(defaultTool->toolbarbutton), true);
			}
		}
	} else {
		if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(tool->toolbarbutton))) {
			Editor::setTool(tool);
			for (uint i=0; i<tools.size(); i++) {
				Tool* itool = &tools.at(i);
				gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(itool->toolbarbutton), (itool==tool));
			}
		} else {
			if (tool==currentTool) {
				Editor::setTool(defaultTool);
				gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(defaultTool->toolbarbutton), true);
			}
		}
	}
	return false;
}

void Editor::setTool(Tool* tool) {
	currentTool = tool;
	nowdrawing = false;
	printf("Tool switched to %s\n", currentTool->name.c_str());

}

osg::Vec2 Editor::getDrawingCoordinatesFromPixel(int px, int py) {
	int width, height;
	graphics->getSize(&width, &height);
	osg::Vec3 screenpos;
	screenpos._v[0] = -1 + 2 * (float(px)/(width-1));
	screenpos._v[1] =  1 - 2 * (float(py)/(height-1));
	osg::Vec3 pos;
	pos = screenpos*osg::Matrixd::inverse(graphics->getCamera()->getProjectionMatrix())*graphics->getCamera()->getInverseViewMatrix();
	return osg::Vec2(pos._v[0],pos._v[1]);
}

void Editor::setCursorPosition(osg::Vec2 pos) {
	curpos = pos;
	osg::Matrixd cursorTransformMatrix;
	cursorTransformMatrix *= osg::Matrix::scale(cursorScale, cursorScale, cursorScale);
	cursorTransformMatrix *= osg::Matrix::translate(osg::Vec3(pos._v[0],pos._v[1],0));
	cursorTransform->setMatrix(cursorTransformMatrix);
}



std::deque<Model::Drawing::Point*> Editor::findPointsNear(osg::Vec2 pos) {
	std::deque<Model::Drawing::Point*> points;
	for (uint i=0; i<drawing->elements.size(); i++) {
		Model::Drawing::Element* element = drawing->elements.at(i);
		//printf("%s\n",element->getClassName().c_str());
		if (element->getClassName()=="Point") {
			Model::Drawing::Point* point = (Model::Drawing::Point*)element;
			if (Vec2Distance(point->pos,pos)<snapRadius) {
				points.push_back(point);
			}
		}
	}
	return points;
}

std::deque<Model::Drawing::Point*> Editor::findPointsNear(osg::Vec2 pos, std::deque<Model::Drawing::Point*> excludepoints) {
	std::deque<Model::Drawing::Point*> points;
	for (uint i=0; i<drawing->elements.size(); i++) {
		Model::Drawing::Element* element = drawing->elements.at(i);
		//printf("%s\n",element->getClassName().c_str());
		if (element->getClassName()=="Point" && !STL_CONTAINS(excludepoints, element)) {
			Model::Drawing::Point* point = (Model::Drawing::Point*)element;
			if (Vec2Distance(point->pos,pos)<snapRadius) {
				points.push_back(point);
			}
		}
	}
	return points;
}

void Editor::selectElementUpdate() {
	/*int rank_Point = 0;
	int rank_Midpoint = 0;
	int rank_Line = -100;*/
	std::deque<Model::Drawing::Element*> elements;
	for (uint i=0; i<drawing->elements.size(); i++) {
		Model::Drawing::Element* element = drawing->elements.at(i);
		//printf("%s\n",element->getClassName().c_str());
		if (!STL_CONTAINS(selectElementRestrictions, element->getClassName()) && !STL_CONTAINS(selectElementExclusions, element)) {
			if (element->getClassName()=="Point") {
				if (((Model::Drawing::Point*)element)!=curpointP && Vec2Distance(((Model::Drawing::Point*)element)->pos,curpos)<snapRadius) {
					elements.push_back(element);
				}
			}
		}
	}
	if (elements.size()>0) {
		selectElement = elements.at((selectElementSelector % elements.size()));
	} else  {
		selectElement = NULL;
	}
	selectElementsList = elements;

	// GUI feedback
	std::string elementsList;
	for (uint i=0; i<selectElementsList.size(); i++) {
		Model::Drawing::Element* element = selectElementsList.at(i);
		if (element==selectElement) {
			elementsList += " <span color=\"#0F0\">"+element->getDescription()+"</span> \n";
		} else {
			elementsList += " "+element->getDescription()+" \n";
		}
	}
	gtk_label_set_markup(GTK_LABEL(mouseWidget), trimTrailingNewlines(stringprintf(" ( %f , %f ) \n%s",curpos._v[0],curpos._v[1],elementsList.c_str())).c_str());
	gtk_window_resize(GTK_WINDOW(graphics->mouseFollowWindow), 1, 1);
}
void Editor::selectElementRestrict(std::deque<std::string> list) {
	selectElementRestrictions = list;
}
void Editor::selectElementUnRestrict() {
	selectElementRestrictions.clear();
}
void Editor::selectElementExclude(std::deque<Model::Drawing::Element*> elements) {
	selectElementExclusions = elements;
}

void Editor::handleGraphicsWindowEvent(SDL_Event* event) {
	osg::Vec2 pos;
	const Uint8* keystate = SDL_GetKeyboardState(NULL);
	switch (event->type) {
		case (SDL_QUIT): {

		} break;
		case (SDL_KEYDOWN): {
			switch (event->key.keysym.sym) {
			case (SDLK_ESCAPE):
				printf("Escape!\n");
				nowdrawing = false;
				break;
			case (SDLK_r):
				printf("Updated drawing\n");
				//drawing->update(1000000,100);
				break;
				}
		} break;
		case (SDL_MOUSEBUTTONDOWN): {
			//printf("click at %d,%d in pixelspace\n",event->button.x, event->button.y);
			pos = getDrawingCoordinatesFromPixel(event->button.x, event->button.y);
			//setCursorPosition(pos);
			/*if (!nowdrawing) {
				pos1 = pos;
				nowdrawing=true;
			} else {
				if (currentTool=="line") {
					drawing->addElement(new Model::Drawing::Line(pos1, pos));
					pos1 = pos;
				}
				if (currentTool=="circle") {
					drawing->addElement(new Model::Drawing::Circle(pos1, Vec2Distance(pos1, pos)));
					nowdrawing=false;
				}
			}*/
			printf("%s\n", currentTool->name.c_str());
			if (!nowdrawing) {
				if (currentTool->name=="select") {
					if (selectElement && selectElement->getClassName()=="Point") {
						Model::Drawing::Point* point = (Model::Drawing::Point*)selectElement;
						if (Vec2Distance(point->pos,pos)<snapRadius) {
							printf("Point %p clicked\n",point);
							curpointP = point;
							currentDrawElement = point;
							nowdrawing = true;
						}
					}
				}
				if (currentTool->name=="line") {
					//std::deque<Model::Drawing::Point*> findpoints = findPointsNear(pos);
					Model::Drawing::Point* newpoint1;
					/*if (findpoints.size()==0) {
						newpoint1 = (Model::Drawing::Point*)drawing->addElement(new Model::Drawing::Point(pos));
					} else {
						newpoint1 = findpoints.at(0);
					}*/
					if (selectElement && selectElement->getClassName()=="Point") {
						newpoint1 = selectElement;
					} else {
						newpoint1 = (Model::Drawing::Point*)drawing->addElement(new Model::Drawing::Point(pos));
					}
					Model::Drawing::Point* newpoint2 = (Model::Drawing::Point*)drawing->addElement(new Model::Drawing::Point(pos));
					//Model::Drawing::Line* newline = new Model::Drawing::Line(pos, osg::Vec2(0,0));
					Model::Drawing::Line* newline = new Model::Drawing::Line(newpoint1, newpoint2);
					drawing->addElement(newline);
					//curposP = &newline->pos2;
					curpointP = newpoint2;
					currentDrawElement = newline;
					nowdrawing = true;
				}
				if (currentTool->name=="delete") {
					/*std::deque<Model::Drawing::Point*> findpoints = findPointsNear(pos);
					if (findpoints.size()>0) {
						drawing->deleteElement(findpoints.at(0));
					}*/
					if (selectElement) {
						drawing->deleteElement(selectElement);
					}
				}
			} else { // nowdrawing = true;
				//std::deque<Model::Drawing::Point*> findpoints = findPointsNear(pos, std::deque<Model::Drawing::Point*>{curpointP});
				//selectElementExclude(std::deque{curpointP});
				if (selectElement && selectElement->getClassName()=="Point" && currentDrawElement->getClassName()=="Line") {
					((Model::Drawing::Line*)currentDrawElement)->changePoint2(selectElement);
					// The problem is that the Line deletes itself, but currentDrawElement still refers to where it used to be
					drawing->updateElement(curpointP);
					drawing->deleteElement(curpointP);
				} else {
					drawing->updateElement(currentDrawElement);
					drawing->updateElement(curpointP);
				}
				curpointP = NULL;
				currentDrawElement = NULL;
				nowdrawing = false;
			}

			drawing->updateAll();

			//drawing->update(1000000,100);
			//printf("click at %f,%f in windowspace\n",pos._v[0], pos._v[1]);
		} break;
		case (SDL_MOUSEMOTION): {
			//printf("mouse moved to %d,%d in pixelspace\n",event->motion.x, event->motion.y);
			pos = getDrawingCoordinatesFromPixel(event->button.x, event->button.y);
			setCursorPosition(pos);
			selectElementUpdate();
			if (nowdrawing && curpointP && currentDrawElement) {
				curpointP->pos = pos;
				//currentDrawElement->modified();
				//currentDrawElement->update();
				//drawing->update(1000000,100);
				drawing->updateElement(currentDrawElement);
			}
			//iteration();
		} break;
		case (SDL_MOUSEWHEEL): {
			//if (event->wheel.y)
			printf("Mouse scroll'd\n");
			selectElementSelector += sign(event->wheel.y);
			printf("Element selector now %d\n",selectElementSelector);
			selectElementUpdate();
		} break;
	}
}

void Editor::iteration() {
	//printf("i");
	//drawing->updateAll();
	const Uint8* keystate = SDL_GetKeyboardState(NULL);
	if (keystate[SDL_SCANCODE_W]) {
		printf("onwards!\n");
	}
}

} /* namespace Editor */
