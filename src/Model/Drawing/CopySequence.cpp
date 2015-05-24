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
	instanceclassname = "CopySequence";
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

void CopySequence::updateImpl(uint resoluton) {
	//uint times = std::min(copyTimes, depth); // TODO Potentially I should not be using depth this way (depth is intended for levels of recursion while this is iterative, not recursive)
	//printf("Container is %d while should be %d\n",osgtransforms.size(),times);
	uint times = copyTimes;
	if (osgtransforms.size()<times) { // Need to create new osgtransforms
		for (uint i=osgtransforms.size(); i<times; i++) {
			osg::MatrixTransform* osgtransform = new osg::MatrixTransform();
			osgtransforms.push_back(osgtransform);
			osgnode->addChild(osgtransform);
			osgtransform->addChild(element->osgnode);
		}
	}
	if (osgtransforms.size()>times) { // Need to delete extra osgtransforms
		for (uint i=times; i<osgtransforms.size(); i++) {
			osg::MatrixTransform* osgtransform = osgtransforms.back();
			osgtransforms.pop_back();
			osgnode->removeChild(osgtransform);
			//delete osgtransform;
		}
	}
	//osg::Vec2 offset = osg::Vec2(0,0);
	//float rotation = 0;
	osg::Matrixd transform;
	for (uint i=0; i<times; i++) {
		osg::MatrixTransform* osgtransform = osgtransforms.at(i);
		osgtransform->setMatrix(transform);
		transform *= osg::Matrix::translate(osg::Vec3(translationVector.x(),translationVector.y(),0));
		transform *= osg::Matrix::translate(osg::Vec3(-rotationCenter.x(),-rotationCenter.y(),0));
		transform *= osg::Matrix::rotate(rotationRadians, osg::Vec3(0,0,1));
		transform *= osg::Matrix::translate(osg::Vec3(rotationCenter.x(),rotationCenter.y(),0));
	}
}

} /* namespace Drawing */
} /* namespace Model */
