/*
 * Midpoint.h
 *
 *  Created on: May 25, 2015
 *      Author: theron
 */

#ifndef MIDPOINT_H_
#define MIDPOINT_H_

#include "Point.h"
#include "Line.h"

namespace Model {
namespace Drawing {

class Midpoint: public Point {
public:
	Midpoint(Line* line);
	virtual ~Midpoint();
	Line* line;
	void updateImpl(uint resoluton);
	std::string printAttributes();
};

void Midpoint::updateImpl(uint resolution) {
	pos = (line->point1->pos+line->point2->pos)/2;
	Point::updateImpl(resolution);
}

std::string Midpoint::printAttributes() {
	return stringprintf("(%f,%f)", pos._v[0], pos._v[1]);
}

} /* namespace Drawing */
} /* namespace Model */

#endif /* MIDPOINT_H_ */
