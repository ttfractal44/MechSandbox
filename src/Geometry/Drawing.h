/*
 * Drawing.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef DRAWING_H_
#define DRAWING_H_

#include <osg/Geometry>
#include "Curve.h"

namespace Geometry {

class Drawing {
public:
	Drawing();
	virtual ~Drawing();
	osg::Geometry* getDrawable(uint res);
	void markUpdated();
	std::vector<Curve*> curves;
private:
	osg::Geometry* osggeom;
	uint lastRes;
	bool meshUpdated;
};

} /* namespace Geometry */

#endif /* DRAWING_H_ */
