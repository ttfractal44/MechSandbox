/*
 * main.cpp
 *
 *  Created on: Feb 27, 2015
 *      Author: theron
 */




#include "Client/Client.h"
#include "Geometry/Drawing.h"
#include "Geometry/Circle.h"
#include "Geometry/Line.h"
#include <gtk/gtk.h>
#include <gdk/gdk.h>

uint res=60;
Geometry::Drawing* drawing1;

float x=0;
float y=0;
float z=0;
float step=0.1;

osg::Camera* camera;

void increaseX() { x+=step; camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1)); }
void decreaseX() { x-=step; camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1)); }
void increaseY() { y+=step; camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1)); }
void decreaseY() { y-=step; camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1)); }
void increaseZ() { z+=step; camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1)); }
void decreaseZ() { z-=step; camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1)); }

void increaseRes() {
	res+=1;
	printf("Resolution = %u\n",res);
	//drawing1->getDrawable(res);
	drawing1->generateOsgGeometry(res);
}

void decreaseRes() {
	if (res>1) {
		res-=1;
	}
	printf("Resolution = %u\n",res);
	//drawing1->getDrawable(res);
	drawing1->generateOsgGeometry(res);
}

int main() {
	Client::Client* client = new Client::Client();
	client->initializeGraphics();
	Client::GraphicsWindow* graphics1 = client->newGraphicsWindow("graphics1", 800, 600);
	Client::ToolWindow* toolwindow1 = graphics1->newAttachedToolWindow("tool1");

	GtkWidget* tools1 = gtk_box_new(GTK_ORIENTATION_VERTICAL, 2);

	GtkWidget* increaseResButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(increaseResButton), "Increase Resolution");
	g_signal_connect(increaseResButton, "clicked", increaseRes, NULL);
	GtkWidget* decreaseResButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(decreaseResButton), "Decrease Resolution");
	g_signal_connect(decreaseResButton, "clicked", decreaseRes, NULL);

	GtkWidget* increaseXButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(increaseXButton), "+x");
	g_signal_connect(increaseXButton, "clicked", increaseX, NULL);
	GtkWidget* decreaseXButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(decreaseXButton), "-x");
	g_signal_connect(decreaseXButton, "clicked", decreaseX, NULL);
	GtkWidget* increaseYButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(increaseYButton), "+y");
	g_signal_connect(increaseYButton, "clicked", increaseY, NULL);
	GtkWidget* decreaseYButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(decreaseYButton), "-y");
	g_signal_connect(decreaseYButton, "clicked", decreaseY, NULL);
	GtkWidget* increaseZButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(increaseZButton), "+z");
	g_signal_connect(increaseZButton, "clicked", increaseZ, NULL);
	GtkWidget* decreaseZButton = gtk_button_new();
	gtk_button_set_label(GTK_BUTTON(decreaseZButton), "-z");
	g_signal_connect(decreaseZButton, "clicked", decreaseZ, NULL);

	gtk_container_add(GTK_CONTAINER(tools1), increaseResButton);
	gtk_container_add(GTK_CONTAINER(tools1), decreaseResButton);

	gtk_container_add(GTK_CONTAINER(tools1), increaseXButton);
	gtk_container_add(GTK_CONTAINER(tools1), decreaseXButton);
	gtk_container_add(GTK_CONTAINER(tools1), increaseYButton);
	gtk_container_add(GTK_CONTAINER(tools1), decreaseYButton);
	gtk_container_add(GTK_CONTAINER(tools1), increaseZButton);
	gtk_container_add(GTK_CONTAINER(tools1), decreaseZButton);

	toolwindow1->setWidget(tools1);

	toolwindow1->show();

	drawing1 = new Geometry::Drawing();

	float radius1 = 1.0;
	float radius2 = 0.92;
	drawing1->addCurve(new Geometry::Circle(osg::Vec2(0,0),radius1));
	drawing1->addCurve(new Geometry::Circle(osg::Vec2(-1,-1),radius2));
	drawing1->addCurve(new Geometry::Circle(osg::Vec2(1,-1),radius2));
	drawing1->addCurve(new Geometry::Circle(osg::Vec2(-1,1),radius2));
	drawing1->addCurve(new Geometry::Circle(osg::Vec2(1,1),radius2));
	drawing1->addCurve(new Geometry::Line(osg::Vec2(-2,-2),osg::Vec2(2,-2)));
	drawing1->addCurve(new Geometry::Line(osg::Vec2(2,-2),osg::Vec2(2,2)));
	drawing1->addCurve(new Geometry::Line(osg::Vec2(2,2),osg::Vec2(-2,2)));
	drawing1->addCurve(new Geometry::Line(osg::Vec2(-2,2),osg::Vec2(-2,-2)));

	drawing1->addCurve(new Geometry::Line(osg::Vec2(-2,0),osg::Vec2(2,0)));
	drawing1->addCurve(new Geometry::Line(osg::Vec2(0,-2),osg::Vec2(0,2)));

	drawing1->addCurve(new Geometry::Line(osg::Vec2(-2,-2),osg::Vec2(2,2)));
	drawing1->addCurve(new Geometry::Line(osg::Vec2(-2,2),osg::Vec2(2,-2)));



	//osg::Geometry* drawing1geometry = drawing1->getDrawable(res);

	osg::Group* root = new osg::Group();
	//osg::Group* root2 = new osg::Group();
	//osg::Geode* drawing1geode = new osg::Geode();
	//drawing1geode->addDrawable(drawing1geometry);
	//root2->addChild(drawing1geode);
	//root->addChild(root2);
	root->addChild(drawing1->getOsgGeode());
	drawing1->generateOsgGeometry(res);

	//osgViewer::Viewer viewer;

	//viewer.setSceneData( root );
	graphics1->setSceneData(root);

	camera = graphics1->getCamera();

	//camera->setViewMatrixAsLookAt(osg::Vec3(x,y,z),osg::Vec3(0,0,0),osg::Vec3(0,0,1));

	camera->setViewMatrixAsLookAt(osg::Vec3(0,0,10),osg::Vec3(0,0,0),osg::Vec3(0,1,0));

	//viewer.run();

	client->main();
	printf("Main exited\n");
	return 0;
}
