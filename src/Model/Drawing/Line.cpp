/*
 * Line.cpp
 *
 *  Created on: Apr 15, 2015
 *      Author: theron
 */

#include "Line.h"

namespace Model {
namespace Drawing {

Line::Line(osg::Vec2 _pos1, osg::Vec2 _pos2) {
	pos1 = _pos1;
	pos2 = _pos2;
	drawelements->setMode(osg::PrimitiveSet::LINE_STRIP);

}

Line::~Line() {
	// TODO Auto-generated destructor stub
}

void Line::updateImpl(uint depth, uint resolution) {
	verts->clear();
	verts->push_back(pos1);
	verts->push_back(pos2);
	drawelements->clear();
	drawelements->push_back(0);
	drawelements->push_back(1);
	//osggeom->dirtyDisplayList();
}

} /* namespace Drawing */
} /* namespace Model */
