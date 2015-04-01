/*
 * Curve.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef CURVE_H_
#define CURVE_H_

#include "datatypes.h"

namespace Geometry {

class Curve {
	friend class Line;
	friend class Circle;
public:
	Curve();
	virtual ~Curve();
	virtual Polyline* getPolyline(uint res);
private:
	Polyline polyline;
};

} /* namespace Geometry */

#endif /* CURVE_H_ */
