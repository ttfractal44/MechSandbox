/*
 * Union.cpp
 *
 *  Created on: Apr 16, 2015
 *      Author: theron
 */

#include "Union.h"

namespace Model {
namespace Drawing {

Union::Union() {
	// TODO Auto-generated constructor stub
	instanceclassname = "Point";
}

Union::~Union() {
	// TODO Auto-generated destructor stub
}

Element* Union::addElement(Element* element) {
	elements.push_back(element);
	return element;
}

void Union::updateImpl(uint depth, uint resoluton) {
	for (uint i=0; i<elements.size(); i++) {
		Element* element = elements.at(i);
		if (!osgnode->asGroup()->containsNode(element->osgnode)) {
			osgnode->asGroup()->addChild(element->osgnode); // Ensure that osggroup representing entire drawing has the node of this element added to it
		}
	}
}

} /* namespace Drawing */
} /* namespace Model */
