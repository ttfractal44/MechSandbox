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

	gtk_container_add(GTK_CONTAINER(tools1), increaseResButton);
	gtk_container_add(GTK_CONTAINER(tools1), decreaseResButton);

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

	osg::Camera* camera = graphics1->getCamera();

	camera->setViewMatrixAsLookAt(osg::Vec3(0,0,10),osg::Vec3(0,0,0),osg::Vec3(0,1,0));

	//viewer.run();

	client->main();
	printf("Main exited\n");
	return 0;
}
