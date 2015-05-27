/*
 * Point.h
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#ifndef POINT_H_
#define POINT_H_

#include "Element.h"

namespace Model {
namespace Drawing {

class Point: public Element {
public:
	Point();
	Point(osg::Vec2 _pos);
	virtual ~Point();
	osg::Vec2 pos;
	void updateImpl(uint resoluton);
	std::string printAttributes();
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* POINT_H_ */
