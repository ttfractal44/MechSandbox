/*
 * Drawing.cpp
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#include "Drawing.h"

namespace Model {
namespace Drawing {

Drawing::Drawing() {
	osggroup = new osg::Group();
}

Drawing::~Drawing() {
	// TODO Auto-generated destructor stub
}

Element* Drawing::addElement(Element* element) {
	elements.push_back(element);
	element->container = this;
	return element;
}

void Drawing::update(uint depth, uint resolution) {
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		if (!osggroup->containsNode(element->osgnode)) {
			osggroup->addChild(element->osgnode); // Ensure that osggroup representing entire drawing has the node of this element added to it
		}
	}
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		element->updated = false; // Set the updated flag to false so that it can be set true again by each instance recursively
	}
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		element->update(depth, resolution);
	}
}

} /* namespace Drawing */
} /* namespace Model */
