/*
 * Drawing.cpp
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#include "Drawing.h"

namespace Model {
namespace Drawing {

Drawing::Drawing(std::string _name) {
	name = _name;
	osggroup = new osg::Group();
	updatedepth = 256;
	updateresolution = 256;
}

Drawing::~Drawing() {
	// TODO Auto-generated destructor stub
}

template <typename Type>
Type* addElementReturnSame(Drawing* drawing, Type* element) {
	drawing->addElement(element);
	return element;
}

Element* Drawing::addElement(Element* element) {
	elements.push_back(element);
	element->container = this;
	return element;
}

void Drawing::setUpdateProperties(uint depth, uint resolution) {
	updatedepth = depth;
	updateresolution = resolution;
}

void Drawing::updateAll(uint depth, uint resolution) {
	setUpdateProperties(depth, resolution);
	updateAll();
}

void Drawing::updateAllNoArgs() {
	updateAll();
}

void Drawing::updateAll() {
	resetUpdates();
	/*for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		fixNodeMembership(element);
	}
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		element->updated = false; // Set the updated flag to false so that it can be set true again by each instance recursively
	}*/ // I think these are redundant now
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		updateElementInternal(element, updatedepth, false); // NOT BIDIRECTIONAL
	}
}

void Drawing::resetUpdates() {
	printf("Starting a new update\n");
	for (uint i=0; i<elements.size(); i++) {
		elements.at(i)->updated = false;
	}
}

void Drawing::updateElement(Element* element) {
	resetUpdates();
	fixNodeMembership(element);
	updateElementInternal(element, updatedepth, true); // BIDIRECTIONAL
}

void Drawing::updateElementInternal(Element* element, uint depth, bool bidirec) {
	if (!element->container) {
		printf("ERROR: Attempted to update an Element that does not know its container!\n");
		throw;
	}
	if (!element->updated && depth>0) {
		fixNodeMembership(element);
		for (uint i=0; i<element->updateFirstElements.size(); i++) {
			updateElementInternal(element->updateFirstElements.at(i), depth-1, bidirec); // bidirec value inherited
		}
		element->updateImpl(updateresolution);
		element->updated=true;
		if (bidirec) { // Bidirec: should this update trigger further updates that depend on this one?
			for (uint i=0; i<element->updateAfterElements.size(); i++) {
				updateElementInternal(element->updateAfterElements.at(i), depth-1, bidirec); // bidirec = true
			}
		}
	} else {
		printf("Element %p already updated\n", element);
	}
}

void Drawing::fixNodeMembership(Element* element) {
	if (!osggroup->containsNode(element->osgnode)) {
		osggroup->addChild(element->osgnode); // Ensure that osggroup representing entire drawing has the node of this element added to it
	}
}

void Drawing::debugPrintStructure() {
	printf("Drawing outline:\n");
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		printf("  Element %p: %s %s\n", element, element->getClassName().c_str(), element->printAttributes().c_str());
		if (element->updateFirstElements.size()) {
			printf("    updateFirst:\n");
			for (uint n=0; n<element->updateFirstElements.size(); n++) {
				Element* element2 = element->updateFirstElements.at(n);
				printf("      Element %p: %s %s\n", element2, element2->getClassName().c_str(), element2->printAttributes().c_str());
			}
		}
		if (element->updateAfterElements.size()) {
			printf("    updateAfter:\n");
			for (uint n=0; n<element->updateAfterElements.size(); n++) {
				Element* element2 = element->updateAfterElements.at(n);
				printf("      Element %p: %s %s\n", element2, element2->getClassName().c_str(), element2->printAttributes().c_str());
			}
		}
	}
}

} /* namespace Drawing */
} /* namespace Model */
