/*
 * Point.cpp
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#include "Point.h"

namespace Model {
namespace Drawing {

Point::Point() : Point(osg::Vec2(0,0)) { }

Point::Point(osg::Vec2 _pos) {
	pos = _pos;
	osgnode->setCullingActive(false);
	//osggeom->setUseDisplayList (false);
	//osggeom->setUseVertexBufferObjects(true);
	instanceclassname = "Point";
}

Point::~Point() {
	// TODO Auto-generated destructor stub
}

void Point::updateImpl(uint resolution) {
	//osg::ref_ptr<osg::Vec2Array> verts = new osg::Vec2Array();
	//osg::ref_ptr<osg::DrawElementsUInt> drawelements = new osg::DrawElementsUInt();
	//drawelements->setMode(osg::DrawElements::PrimitiveSet::POINTS);
	//verts->clear();
	//verts->push_back(pos);
	//drawelements->clear();
	//drawelements->push_back(0);
	//osggeom->dirtyDisplayList();
	osg::ref_ptr<osg::Vec2Array> verts = new osg::Vec2Array();
	osg::ref_ptr<osg::DrawElementsUInt> drawelements = new osg::DrawElementsUInt();
	drawelements->setMode(osg::PrimitiveSet::LINE_LOOP);
	//verts->clear();
	//drawelements->clear();
	for (uint i=0; i<8; i++) {
		float t = i*2*M_PI/8;
		verts->push_back(pos + osg::Vec2(0.01*cos(t),0.01*sin(t)));
		drawelements->push_back(i);
	}
	osggeom->setVertexArray(verts);
	osggeom->removePrimitiveSet(0,1);
	osggeom->addPrimitiveSet(drawelements);
	//osggeom->dirtyDisplayList();
}

std::string Point::printAttributes() {
	return stringprintf("(%f,%f)", pos._v[0], pos._v[1]);
}

} /* namespace Drawing */
} /* namespace Model */
