/*
 * Circle.h
 *
 *  Created on: Apr 15, 2015
 *      Author: theron
 */

#ifndef CIRCLE_H_
#define CIRCLE_H_

#include "Curve.h"

namespace Model {
namespace Drawing {

class Circle: public Curve {
public:
	Circle(osg::Vec2 _center, float _radius);
	virtual ~Circle();
	osg::Vec2 center;
	float radius;
	void updateImpl(uint depth, uint resoluton);
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* CIRCLE_H_ */
