/*
 * Line.h
 *
 *  Created on: Apr 15, 2015
 *      Author: theron
 */

#ifndef LINE_H_
#define LINE_H_

#include "Curve.h"
#include "Point.h"

namespace Model {
namespace Drawing {

class Line: public Curve {
public:
	Line(Point* point1, Point* point2);
	virtual ~Line();
	Point* point1;
	Point* point2;
	void changePoint1(Point* newpoint1);
	void changePoint2(Point* newpoint2);
	void updateImpl(uint resoluton);
	std::string printAttributes();
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* LINE_H_ */
