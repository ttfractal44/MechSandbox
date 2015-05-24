/*
 * Line.cpp
 *
 *  Created on: Apr 15, 2015
 *      Author: theron
 */

#include "Line.h"

namespace Model {
namespace Drawing {

Line::Line(Point* _point1, Point* _point2) {
	point1 = _point1;
	point2 = _point2;
	drawelements->setMode(osg::PrimitiveSet::LINE_STRIP);
	dependOn(point1);
	dependOn(point2);
	instanceclassname = "Line";
}

Line::~Line() {
	// TODO Auto-generated destructor stub
}

void Line::updateImpl(uint resolution) {
	verts->clear();
	verts->push_back(point1->pos);
	verts->push_back(point2->pos);
	drawelements->clear();
	drawelements->push_back(0);
	drawelements->push_back(1);
	osggeom->dirtyDisplayList();
}

std::string Line::printAttributes() {
	char str[128];
	sprintf(str, "(%f,%f) to (%f,%f)", point1->pos._v[0], point1->pos._v[1], point2->pos._v[0], point2->pos._v[1]);
	return std::string(str);
}

} /* namespace Drawing */
} /* namespace Model */
