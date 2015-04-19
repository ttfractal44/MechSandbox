/*
 * Line.h
 *
 *  Created on: Apr 15, 2015
 *      Author: theron
 */

#ifndef LINE_H_
#define LINE_H_

#include "Curve.h"

namespace Model {
namespace Drawing {

class Line: public Curve {
public:
	Line(osg::Vec2 _pos1, osg::Vec2 _pos2);
	virtual ~Line();
	osg::Vec2 pos1;
	osg::Vec2 pos2;
	void updateImpl(uint depth, uint resoluton);
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* LINE_H_ */
