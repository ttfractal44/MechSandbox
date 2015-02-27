/*
 * Client.h
 *
 *  Created on: Feb 4, 2015
 *      Author: theron
 */

#ifndef CLIENT_H_
#define CLIENT_H_

#include <GL/glew.h>
#include <SDL2/SDL.h>
#include <gtk/gtk.h>
#include <gdk/gdk.h>
#include <osgViewer/Viewer>
#include <osgUtil/SceneView>
#include <osg/Camera>
#include <osgViewer/Renderer>
#include <osgGA/TrackballManipulator>
#include <osgGA/FirstPersonManipulator>
#include <osgViewer/ViewerEventHandlers>
#include <string>
#include <assert.h>

#include "CustomViewer.h"
#include "Camera.h"
#include "rendering.h"
#include "input.h"
#include "interface.h"

#include "../misc/strings.h"
#include "../misc/utils.h"

namespace Client {


extern int updateFPSInterval;
extern bool printFPS;

extern SDL_Window* sdlWindow;
extern SDL_GLContext sdlglContext;

extern GtkWidget *gtkWindow;
/*extern GLuint interfaceTexture;
extern GLuint interfaceShaderProgram;
extern GLuint interfaceVertexArrayId;
extern GLuint interfaceVertexBufferId;*/
extern GdkPixbuf *gtkWindowPixbuf;


extern osgViewer::Viewer* osg_viewer;
extern osg::Camera* sceneCamera;
extern Camera* camera;
extern osgViewer::GraphicsWindowEmbedded* osg_graphicsWindow;
extern osg::Camera* interfaceCamera;
extern osg::Geode* interfaceGeode;
extern osg::Geometry* interfaceGeometry;
extern osg::Texture2D* interfaceTexture;
extern osg::Image* interfaceImage;
extern osg::Group* sceneRoot;

extern bool runloop;

extern bool captureMouse;
extern int controlStyle;
extern float cameraSensitivity;
extern float movementSpeed;
extern int windowWidth;
extern int windowHeight;

//extern World::Camera* viewCamera;
//extern World::Camera* controlledCamera;


void initialize();
void step();
void run();
void resize(int w, int h);
void setSceneData(osg::Group* scene);

} /* namespace Client */

#endif /* CLIENT_H_ */
