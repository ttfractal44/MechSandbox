/*
 * Drawing.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef DRAWING_H_
#define DRAWING_H_

#include <osg/Geometry>
#include <osg/Geode>
#include "Curve.h"

namespace Geometry {

class Drawing {
public:
	Drawing();
	virtual ~Drawing();
	void generateOsgGeometry(uint res);
	osg::Geode* getOsgGeode();
	void addCurve(Curve* curve);
private:
	std::vector<Curve*> curves;
	osg::Geode* osgnode;
};

} /* namespace Geometry */

#endif /* DRAWING_H_ */
