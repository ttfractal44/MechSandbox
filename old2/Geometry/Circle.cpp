/*
 * Circle.cpp
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#include "Circle.h"

namespace Geometry {

Circle::Circle(osg::Vec2 _center, float _radius) {
	center = _center;
	radius = _radius;
	elements->setMode(osg::PrimitiveSet::LINE_LOOP);
	//elements->setMode(osg::PrimitiveSet::POLYGON);
}

Circle::~Circle() {
	// TODO Auto-generated destructor stub
}

void Circle::generateOsgGeometry(uint res) {
	verts->clear();
	elements->clear();
	for (uint i=0; i<res; i++) {
		float t=2*M_PI*i/res;
		verts->push_back(osg::Vec2(center.x()+radius*cos(t),center.y()+radius*sin(t)));
		elements->push_back(i);
	}
	Curve::generateOsgGeometry(res);
}

} /* namespace Geometry */
