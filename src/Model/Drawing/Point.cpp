/*
 * Point.cpp
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#include "Point.h"

namespace Model {
namespace Drawing {

Point::Point(osg::Vec2 _pos) {
	pos = _pos;
	osgnode->setCullingActive(false);
	drawelements->setMode(osg::DrawElements::PrimitiveSet::POINTS);
	//osggeom->setUseDisplayList (false);
	//osggeom->setUseVertexBufferObjects(true);
	instanceclassname = "Point";
}

Point::~Point() {
	// TODO Auto-generated destructor stub
}

void Point::updateImpl(uint resolution) {
	verts->clear();
	verts->push_back(pos);
	drawelements->clear();
	drawelements->push_back(0);
	//osggeom->dirtyDisplayList();
}

} /* namespace Drawing */
} /* namespace Model */
