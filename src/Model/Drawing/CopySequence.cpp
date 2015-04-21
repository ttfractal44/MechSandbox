/*
 * CopySequence.cpp
 *
 *  Created on: Apr 19, 2015
 *      Author: theron
 */

#include "CopySequence.h"

namespace Model {
namespace Drawing {

CopySequence::CopySequence(Element* _element) {
	// TODO Auto-generated constructor stub
	element = _element;
	copyTimes = 1;
	translationVector = osg::Vec2(0,0);
	rotationRadians = 0;
	rotationCenter = osg::Vec2(0,0);
}

CopySequence::~CopySequence() {
	// TODO Auto-generated destructor stub
}

void CopySequence::setTransformationProperties(uint _copyTimes, osg::Vec2 _translationVector, float _rotationRadians, osg::Vec2 _rotationCenter) {
	copyTimes = _copyTimes;
	translationVector = _translationVector;
	rotationRadians = _rotationRadians;
	rotationCenter = _rotationCenter;
}

void CopySequence::updateImpl(uint depth, uint resoluton) {
	printf("DEPTH IS %d, COPYTIMES IS %d\n",depth,copyTimes);
	printf("Updating CopySequence %p\n",this);
	uint times = std::min(copyTimes, depth); // TODO Potentially I should not be using depth this way (depth is intended for levels of recursion while this is iterative, not recursive)
	printf("Container is %d while should be %d\n",osgtransforms.size(),times);
	if (osgtransforms.size()<times) { // Need to create new osgtransforms
		for (uint i=osgtransforms.size(); i<times; i++) {
			osg::PositionAttitudeTransform* osgtransform = new osg::PositionAttitudeTransform();
			osgtransforms.push_back(osgtransform);
			osgnode->addChild(osgtransform);
			printf("Created new transform in CopySequence %p\n",this);
		}
	}
	if (osgtransforms.size()>times) { // Need to delete extra osgtransforms
		for (uint i=times; i<osgtransforms.size(); i++) {
			osg::PositionAttitudeTransform* osgtransform = osgtransforms.back();
			osgtransforms.pop_back();
			osgnode->removeChild(osgtransform);
			//delete osgtransform;
		}
	}
	osg::Vec2 offset = osg::Vec2(0,0);
	for (uint i=0; i<times; i++) {
		osg::PositionAttitudeTransform* osgtransform = osgtransforms.at(i);
		printf("Using offset <%f,%f>\n",offset.x(),offset.y());
		osgtransform->setPosition(osg::Vec3(offset.x(),offset.y(),0));
		offset += translationVector;
		osgtransform->addChild(element->osgnode);
	}
}

} /* namespace Drawing */
} /* namespace Model */
