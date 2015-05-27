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
#include <typeinfo>

namespace Model {
namespace Drawing {

class Drawing;

}
}

#include "Element.h"

namespace Model {
namespace Drawing {

const int UPDATE_DESCEND = 0;
const int UPDATE_ASCEND = 1;
const int UPDATE_BIDIREC = 2;

class Drawing {
public:
	Drawing(std::string _name);
	virtual ~Drawing();
	osg::Group* osggroup;
	Element* addElement(Element* element); // Adds element to drawing, returns pointer to element
	void deleteElement(Element* element);
	void setUpdateProperties(uint depth, uint resolution);
	void updateAll(uint depth, uint resolution); // setUpdateProperties and updateAll combined
	void updateAll();
	void updateAllNoArgs();
	void updateElement(Element* element); // Update a specific element, handling recursion where needed
	void debugPrintStructure();
	std::string name;
	uint updatedepth;
	uint updateresolution;
	std::deque<Element*> elements;
	std::string getNewElementName();
private:
	uint namecounter=0;
	void fixNodeMembership(Element* element);
	void resetUpdates(); // Set all elements to updated=false
	//void updateElementInternal(Element* element, uint depth, bool bidirec);
	void updateElementInternal(Element* element, uint depth, int direction);
};

/*template <typename Type>
Type* addElementReturnSame(Drawing* drawing, Type* element);*/

//#define DRAWING_ADD_ELEMENT_PRESERVE_TYPE(element)

} /* namespace Drawing */
} /* namespace Model */

#endif /* DRAWING_H_ */
