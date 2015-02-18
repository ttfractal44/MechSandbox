/*
 * Client.cpp
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#include "Client.h"

namespace Client {

int updateFPSInterval = 60;  // Update FPS counter every 60 frames
bool printFPS = false;

SDL_Window* sdlWindow;
SDL_GLContext sdlglContext;

GtkWidget *gtkWindow;
/*GLuint interfaceTexture;
GLuint interfaceShaderProgram;
GLuint interfaceVertexArrayId;
GLuint interfaceVertexBufferId;*/
GdkPixbuf *gtkWindowPixbuf;

osgViewer::Viewer* osg_viewer;
osg::Camera* sceneCamera;
Camera* camera;

osgViewer::GraphicsWindowEmbedded* osg_graphicsWindow;
osg::Camera* interfaceCamera;
osg::Geode* interfaceGeode;
osg::Geometry* interfaceGeometry;
osg::Texture2D* interfaceTexture;
osg::Image* interfaceImage;
osg::Group* sceneRoot;

bool runloop = false;

bool captureMouse = false;
int controlStyle = 2;
float cameraSensitivity = 1000;
float movementSpeed = 0.5;
int windowWidth = 1066;
int windowHeight = 600;

//World::Camera* viewCamera;
//World::Camera* controlledCamera;

void initialize() {
	initRendering();
	initInterface();
}

void step() {
	// Process SDL input
	// GTK iteration
	// GTK texture to opengl
	// OpenGL render


	getUserEvents();
	updateInterface();
	//osgContext.frame();
	render();

	//if (osgContext.done()) {
	//	runloop=false;
	//}

}

void run() {
	runloop=true;
	while (runloop) {
		step();
	}
}

void resize(int w, int h) {
	gtk_window_set_default_size(GTK_WINDOW(gtkWindow), w, h);
	//glViewport(0, 0, w, h);
	osg_graphicsWindow->resized(0,0,w,h);
	windowWidth = w;
	windowHeight = h;
}

void setSceneData(osg::Group* scene) {

}

void setSceneCamera(osg::Camera* camera) {

}

} /* namespace Client */
