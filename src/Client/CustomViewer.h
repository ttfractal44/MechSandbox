/*
 * CustomViewer.h
 *
 *  Created on: Feb 13, 2015
 *      Author: theron
 */

#ifndef CUSTOMVIEWER_H_
#define CUSTOMVIEWER_H_

//#include "Client.h"
#include <osgViewer/Viewer>
//#include <osgViewer/ViewerBase>

#include <stdlib.h>
#include <string.h>

#include <osgViewer/ViewerBase>
#include <osgViewer/View>
#include <osgViewer/Renderer>

#include <osg/io_utils>

#include <osg/TextureCubeMap>
#include <osg/TextureRectangle>
#include <osg/TexMat>
#include <osg/DeleteHandler>

#include <osgDB/Registry>

#include <osgUtil/Optimizer>
#include <osgUtil/IntersectionVisitor>
#include <osgUtil/Statistics>

namespace Client {

/*class CustomViewerBase : public osgViewer::ViewerBase {

};

class CustomViewer : public osgViewer::Viewer, public CustomViewerBase {
};*/

class CustomViewer : public osgViewer::Viewer {
public:
	virtual void renderingTraversals();
	virtual void renderingTraversals2();
	virtual void drawAllContexts();
	virtual void swapAllContexts();
	virtual void makeCurrent_(osg::GraphicsContext* gc);
};

} /* namespace Client */

#endif /* CUSTOMVIEWER_H_ */
