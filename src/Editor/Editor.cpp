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
	camera->setViewMatrixAsLookAt(osg::Vec3(1,1,10),osg::Vec3(1,1,0),osg::Vec3(0,1,0));
	graphics->setSceneData(drawing->osggroup);

	//graphics->setEventHandler(CALLBACK_CLASS(Editor, this, &Editor::Editor::handleGraphicsWindowEvent, NULL));
	//graphics->setKeystateHandler(CALLBACK_CLASS(Editor, this, &Editor::Editor::handleGraphicsWindowKeystate, NULL));

	//createCmdLineWindow();

	createToolBarWindow();

}


Editor::~Editor() {
	// TODO Auto-generated destructor stub
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

	GtkWidget* openCmdLineButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(openCmdLineButton), "CMD");
	gtk_container_add(GTK_CONTAINER(toolbar), openCmdLineButton);
	hack_g_signal_connect_classmember(openCmdLineButton, "clicked", this, &Editor::createCmdLineWindow, false);

	/*GtkWidget* openToolBarButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(openToolBarButton), "Tools");
	gtk_container_add(GTK_CONTAINER(toolbar), openToolBarButton);
	hack_g_signal_connect_classmember(openToolBarButton, "clicked", this, &Editor::createToolBarWindow, false);*/

	GtkWidget* lineToolButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(lineToolButton), "Line");
	gtk_container_add(GTK_CONTAINER(toolbar), lineToolButton);
	//hack_g_signal_connect_classmember(lineToolButton, "clicked", this, &Editor::setTool, false, (void*)(new std::string("line")));
	//g_signal_connect_swapped(lineToolButton, "clicked", G_CALLBACK(call_instance_member<Editor>), (new InstanceCallData<Editor>{this, &Editor::Editor::setToolStrP, (void*)(new std::string("line")), false}));
	//g_signal_connect_swapped(lineToolButton, "clicked", G_CALLBACK(call_instance_member<Editor>), INSTANCE_CALLBACK_DATA(Editor, this, &Editor::Editor::setToolStrP, new std::string("line")));

	//g_signal_connect(lineToolButton, "clicked", G_CALLBACK(callback_call<Editor>), new Callback<Editor>(this, (void* (Editor::*)(void*,void*))(&Editor::Editor::setToolStrP), (void*)(new std::string("line"))));
	//g_signal_connect(lineToolButton, "clicked", G_CALLBACK(classcallback_call<Editor>), CLASSCALLBACK(Editor, this, &Editor::Editor::setToolStrP, new std::string("line")));
	//g_signal_connect(lineToolButton, "clicked", G_CALLBACK(callback_call), CALLBACK_CLASS(Editor, this, &Editor::Editor::setToolStrP, new std::string("line")));
	//g_signal_connect(lineToolButton, "clicked", G_CALLBACK(callback_call), CALLBACK_CLASS_SWAPPED(Editor, this, &Editor::Editor::setToolStrP, new std::string("line")));


	//ClassCallback<Editor>* testclasscallback;
	//testclasscallback = CLASSCALLBACK(Editor, this, &Editor::Editor::setToolStrP, new std::string("line"));

	//Callback* testcallback;
	//testcallback = CALLBACK(&hello, NULL);
	//testcallback = CALLBACK( &(classcallback_call<Editor>), testclasscallback );
	//testcallback = CALLBACK_CLASS(Editor, this, &Editor::Editor::setToolStrP, new std::string("line"));

	//g_signal_connect(lineToolButton, "clicked", G_CALLBACK(callback_call), testcallback);
	//callback_call(NULL, testcallback);
	//g_signal_connect(lineToolButton, "clicked", G_CALLBACK(classcallback_call<Editor>), testclasscallback);

	//UCallback* callback = new UClassCallback<Editor>(this, (void* (Editor::*)(void*, void*))(&Editor::setToolStrP), new std::string("line"), false);

	UCallback* callback = new UClassCallback<Editor>(this, (void* (Editor::*)(void*, void*))(&Editor::setToolStrP), new std::string("line"), true);

	//UCallback* callback = classcallback;

	//UClassCallback<Editor>* callback = new UClassCallback ();

	g_signal_connect(lineToolButton, "clicked", G_CALLBACK(ucallback_call), callback);

	Client::ToolWindow* toolbarwindow = graphics->newAttachedToolWindow(windowname+": "+"Toolbar");
	toolbarwindow->setWidget(toolbar);
	//InstanceCallData<Editor>* call_data;
	//call_data = (new InstanceCallData<Editor>{this, &Editor::Editor::requestClose});
	//toolbarwindow->setCloseFunction(G_CALLBACK(call_instance_member<Editor>), (new InstanceCallData<Editor>{this, &Editor::Editor::requestClose}));
	toolbarwindow->setCloseFunction(G_CALLBACK(call_instance_member<Editor>), INSTANCE_CALLBACK(Editor, this, &Editor::Editor::requestClose));
	gtk_widget_show_all(toolbar);
	toolbarwindow->show();

}

void Editor::setTool(std::string toolName) {
	currentTool = toolName;
	printf("Tool switched to %s\n", currentTool.c_str());
}

void Editor::setToolStrP(std::string* toolName) {
	setTool(*toolName);
}

void Editor::handleGraphicsWindowEvent(SDL_Event* event) {
	switch (event->type) {
	case (SDL_QUIT):
		break;
	case (SDL_KEYDOWN):
		switch (event->key.keysym.sym) {
		case (SDLK_ESCAPE):
			printf("Escape!\n");
			break;
		}
		break;
	}

}

void Editor::handleGraphicsWindowKeystate(const Uint8** keystate) {
	if (keystate[SDL_SCANCODE_W]) {
		printf("onwards!\n");
	}
}

} /* namespace Editor */
