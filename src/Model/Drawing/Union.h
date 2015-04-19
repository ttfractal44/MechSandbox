/*
 * Union.h
 *
 *  Created on: Apr 16, 2015
 *      Author: theron
 */

#ifndef UNION_H_
#define UNION_H_

#include "Element.h"

namespace Model {
namespace Drawing {

class Union : public Element {
public:
	Union();
	virtual ~Union();
	Element* addElement(Element* element);
	void updateImpl(uint depth, uint resoluton);
protected:
	std::deque<Element*> elements;
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* UNION_H_ */
