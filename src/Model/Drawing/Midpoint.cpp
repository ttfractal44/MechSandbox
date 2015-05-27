/*
 * Midpoint.cpp
 *
 *  Created on: May 25, 2015
 *      Author: theron
 */

#include "Midpoint.h"

namespace Model {
namespace Drawing {

Midpoint::Midpoint(Line* _line) {
	line = _line;
	dependOn(line);
	instanceclassname = "Midpoint";
}

Midpoint::~Midpoint() {
	// TODO Auto-generated destructor stub
}

} /* namespace Drawing */
} /* namespace Model */
