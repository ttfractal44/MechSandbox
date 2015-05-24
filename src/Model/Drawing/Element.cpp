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
	instanceclassname = "generic";
}

Element::~Element() {
	// TODO Auto-generated destructor stub
}

/*void Element::update() {
	update(container->lastdepth, container->lastresolution);
}*/

/*void Element::update() {
	if (!updated && modifiedSinceUpdate) {
		updateImpl(container->updateresolution);
		updated=true;
		modifiedSinceUpdate = false;
	}
	for (uint i=0; i<updateDependentElements.size(); i++) {
		Element* element = updateDependentElements.at(i);
		element->update();
	}
}*/

/*void Element::modified() {
	modifiedSinceUpdate = true;
	updated=false;
}*/

void Element::updateImpl(uint resolution) {

}

std::string Element::printAttributes() {
	return std::string("generic");
}

std::string Element::getClassName() {
	return instanceclassname;
}

void Element::dependOn(Element* element) {
	printf("Establishing a dependency\n");
	if (STL_CONTAINS(updateFirstElements, element)) {
		printf("Element dependency already established! (updateFirstElements contains target)\n");
	} else {
		updateFirstElements.push_back(element);
	}
	if (STL_CONTAINS(element->updateAfterElements, element)) {
		printf("Element dependency already established! (target's updateAfterElements contains this)\n");
	} else {
		element->updateAfterElements.push_back(this);
	}
}

} /* namespace Drawing */
} /* namespace Model */
