/*
 * Element.cpp
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#include "Element.h"

namespace Model {
namespace Drawing {

Element::Element() {
	container = NULL;
	osgnode = new osg::Group();
	osggeode = new osg::Geode();
	osggeom = new osg::Geometry();
	verts = new osg::Vec2Array();
	drawelements = new osg::DrawElementsUInt();
	osggeom->setVertexArray(verts);
	osggeom->addPrimitiveSet(drawelements);
	osggeode->addDrawable(osggeom);
	osgnode->asGroup()->addChild(osggeode);
	updated = false;
	modifiedSinceUpdate = true;
}

Element::~Element() {
	// TODO Auto-generated destructor stub
}

void Element::update(uint depth, uint resolution) {
	if (!updated && modifiedSinceUpdate && depth>0) {
		updateImpl(depth-1, resolution);
		updated=true;
		modifiedSinceUpdate = false;
	}
}

void Element::modified() {
	modifiedSinceUpdate = true;
}

void Element::updateImpl(uint depth, uint resolution) {

}

} /* namespace Drawing */
} /* namespace Model */
