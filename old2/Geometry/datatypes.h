/*
 * datatypes.h
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#ifndef DATATYPES_H_
#define DATATYPES_H_

#include <osg/Array>
#include <osg/Vec2>


struct Polyline {
	//osg::Vec2Array array;
	std::vector<osg::Vec2> array;
	bool closed;
};



#endif /* DATATYPES_H_ */
