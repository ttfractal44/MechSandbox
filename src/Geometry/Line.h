/*
 * Line.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef LINE_H_
#define LINE_H_

#include "Curve.h"

namespace Geometry {

class Line: public Curve {
public:
	Line(osg::Vec2 _p1, osg::Vec2 _p2);
	virtual ~Line();
	osg::Vec2 p1;
	osg::Vec2 p2;
	Polyline* getPolyline(uint res);
};

} /* namespace Geometry */

#endif /* LINE_H_ */
