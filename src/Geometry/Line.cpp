/*
 * Line.cpp
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#include "Line.h"

namespace Geometry {

Line::Line(osg::Vec2 _p1, osg::Vec2 _p2) {
	p1 = _p1;
	p2 = _p2;
}

Line::~Line() {
	// TODO Auto-generated destructor stub
}

Polyline* Line::getPolyline(uint res) {
	polyline.array.empty();
	polyline.closed = false;
	polyline.array.push_back(p1);
	polyline.array.push_back(p2);
	return &polyline;
}

} /* namespace Geometry */
