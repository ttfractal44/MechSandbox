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
	Line();
	virtual ~Line();
};

} /* namespace Geometry */

#endif /* LINE_H_ */
