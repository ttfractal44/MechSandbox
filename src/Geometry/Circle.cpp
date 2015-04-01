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
}

Circle::~Circle() {
	// TODO Auto-generated destructor stub
}

Polyline* Circle::getPolyline(uint res) {
	polyline.array.empty();
	polyline.closed = true;
	for (float t=0; t<2*M_PI; t+=2*M_PI/res) {
		polyline.array.push_back(osg::Vec2(center.x()+radius*cos(t),center.y()+radius*sin(t)));
	}
	return &polyline;
}

} /* namespace Geometry */
