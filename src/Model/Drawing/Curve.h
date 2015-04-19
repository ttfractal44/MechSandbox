/*
 * Curve.h
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#ifndef CURVE_H_
#define CURVE_H_

#include "Element.h"

namespace Model {
namespace Drawing {

class Curve: public Element {
public:
	Curve();
	virtual ~Curve();
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* CURVE_H_ */
