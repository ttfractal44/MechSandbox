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

void Line::generateOsgGeometry(uint res) {
	verts->clear();
	elements->clear();
	verts->push_back(p1);
	verts->push_back(p2);
	elements->push_back(0);
	elements->push_back(1);
	Curve::generateOsgGeometry(res);
}

} /* namespace Geometry */
