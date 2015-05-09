/*
 * Drawing.h
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#ifndef DRAWING_H_
#define DRAWING_H_

#include <deque>
#include <osg/Node>
#include <osg/Group>

namespace Model {
namespace Drawing {

class Drawing;

}
}

#include "Element.h"

namespace Model {
namespace Drawing {

class Drawing {
public:
	Drawing(std::string _name);
	virtual ~Drawing();
	osg::Group* osggroup;
	Element* addElement(Element* element); // Adds element to drawing, returns pointer to element
	void update(uint depth, uint resolution); // Update all Elements in Drawing
	std::string name;
private:
	std::deque<Element*> elements;
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* DRAWING_H_ */
