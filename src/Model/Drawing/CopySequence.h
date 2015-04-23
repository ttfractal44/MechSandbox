/*
 * CopySequence.h
 *
 *  Created on: Apr 19, 2015
 *      Author: theron
 */

#ifndef COPYSEQUENCE_H_
#define COPYSEQUENCE_H_

#include "Element.h"

#include <osg/MatrixTransform>

namespace Model {
namespace Drawing {

class CopySequence: public Element {
public:
	CopySequence(Element* _element);
	virtual ~CopySequence();
	//void setElement(Element* _element); // Should this be allowed?
	void setTransformationProperties(uint _copyTimes, osg::Vec2 _translationVector, float _rotationRadians, osg::Vec2 _rotationCenter);
	void updateImpl(uint depth, uint resoluton);
protected:
	Element* element;
	std::deque<osg::MatrixTransform*> osgtransforms;
	osg::Vec2 translationVector;
	osg::Vec2 rotationCenter;
	float rotationRadians;
	uint copyTimes;
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* COPYSEQUENCE_H_ */
