/*
 * Curve.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef CURVE_H_
#define CURVE_H_

#include "datatypes.h"
#include <osg/Geometry>

namespace Geometry {

class Curve {
	friend class Line;
	friend class Circle;
public:
	Curve();
	virtual ~Curve();
	osg::Geometry* getDrawable();
	virtual void generateOsgGeometry(uint res);
private:
	osg::Geometry* osggeom;
	osg::Vec2Array* verts;
	osg::DrawElementsUInt* elements;
};

} /* namespace Geometry */

#endif /* CURVE_H_ */
