/*
 * Curve.cpp
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#include "Curve.h"

namespace Geometry {

Curve::Curve() {
	// TODO Auto-generated constructor stub

}

Curve::~Curve() {
	// TODO Auto-generated destructor stub
}

Polyline* Curve::getPolyline(uint res) {
	return &polyline;
}

} /* namespace Geometry */
