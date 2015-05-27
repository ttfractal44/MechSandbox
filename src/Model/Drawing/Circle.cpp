/*
 * Circle.cpp
 *
 *  Created on: Apr 15, 2015
 *      Author: theron
 */

#include "Circle.h"

namespace Model {
namespace Drawing {

Circle::Circle(osg::Vec2 _center, float _radius) {
	center = _center;
	radius = _radius;
	instanceclassname = "Circle";
}

Circle::~Circle() {
	// TODO Auto-generated destructor stub
}

void Circle::updateImpl(uint resolution) {
	osg::ref_ptr<osg::Vec2Array> verts = new osg::Vec2Array();
	osg::ref_ptr<osg::DrawElementsUInt> drawelements = new osg::DrawElementsUInt();
	drawelements->setMode(osg::PrimitiveSet::LINE_LOOP);
	//verts->clear();
	//drawelements->clear();
	for (uint i=0; i<resolution; i++) {
		float t = i*2*M_PI/resolution;
		verts->push_back(center + osg::Vec2(radius*cos(t),radius*sin(t)));
		drawelements->push_back(i);
	}

	//osggeom->dirtyDisplayList();
}

} /* namespace Drawing */
} /* namespace Model */
