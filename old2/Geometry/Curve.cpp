/*
 * Curve.cpp
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#include "Curve.h"

namespace Geometry {

Curve::Curve() {
	osggeom = new osg::Geometry();
	verts = new osg::Vec2Array();
	//elements = NULL; // MUST BE INITIALIZED BY SUBCLASS
	elements = new osg::DrawElementsUInt();
	elements->setMode(osg::PrimitiveSet::LINE_STRIP);
	osggeom->setVertexArray(verts);
	osggeom->addPrimitiveSet(elements);
}

Curve::~Curve() {

}

osg::Geometry* Curve::getDrawable() {
	return osggeom;
}

void Curve::generateOsgGeometry(uint res) {
	osggeom->dirtyDisplayList();
}

} /* namespace Geometry */
