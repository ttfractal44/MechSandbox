/*
 * Drawing.cpp
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#include "Drawing.h"

namespace Geometry {

Drawing::Drawing() {
	osgnode = new osg::Geode();
}

Drawing::~Drawing() {
	//delete osgnode;
}

void Drawing::generateOsgGeometry(uint res) {
	for (uint i=0; i<curves.size(); i++) {
		curves.at(i)->generateOsgGeometry(res);
	}
}

osg::Geode* Drawing::getOsgGeode() {
	return osgnode;
}

void Drawing::addCurve(Curve* curve) {
	curves.push_back(curve);
	osgnode->addDrawable(curve->getDrawable());
}

} /* namespace Geometry */
