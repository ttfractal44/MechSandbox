/*
 * Circle.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef CIRCLE_H_
#define CIRCLE_H_

#include "Curve.h"

namespace Geometry {

class Circle: public Curve {
public:
	Circle(osg::Vec2 _center, float _radius);
	virtual ~Circle();
	osg::Vec2 center;
	float radius;
	void generateOsgGeometry(uint res);
};

} /* namespace Geometry */

#endif /* CIRCLE_H_ */
