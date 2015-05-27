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
	dependOn(point1);
	dependOn(point2);
	instanceclassname = "Line";
}

Line::~Line() {
	// TODO Auto-generated destructor stub
}

void Line::changePoint1(Point* newpoint1) {
	if (newpoint1==point2) {
		container->deleteElement(this);
	} else {
		unDependOn(point1);
		point1 = newpoint1;
		dependOn(point1);
	}
}

void Line::changePoint2(Point* newpoint2) {
	if (newpoint2==point1) {
		container->deleteElement(this);
	} else {
		unDependOn(point2);
		point2 = newpoint2;
		dependOn(point2);
	}
}

void Line::updateImpl(uint resolution) {
	//verts->clear();
	osg::ref_ptr<osg::Vec2Array> verts = new osg::Vec2Array();
	osg::ref_ptr<osg::DrawElementsUInt> drawelements = new osg::DrawElementsUInt();
	drawelements->setMode(osg::PrimitiveSet::LINE_STRIP);
	verts->push_back(point1->pos);
	verts->push_back(point2->pos);
	//drawelements->clear();
	drawelements->push_back(0);
	drawelements->push_back(1);
	osggeom->setVertexArray(verts);
	osggeom->removePrimitiveSet(0,1);
	osggeom->addPrimitiveSet(drawelements);
	//osggeom->dirtyDisplayList();
}

std::string Line::printAttributes() {
	return stringprintf("(%f,%f) to (%f,%f)", point1->pos._v[0], point1->pos._v[1], point2->pos._v[0], point2->pos._v[1]);
}

} /* namespace Drawing */
} /* namespace Model */
