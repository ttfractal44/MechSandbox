/*
 * Element.h
 *
 *  Created on: Apr 11, 2015
 *      Author: theron
 */

#ifndef ELEMENT_H_
#define ELEMENT_H_

#include <osg/Node>
#include <osg/Geode>
#include <osg/Group>
#include <osg/Vec2>
#include <osg/Geometry>

#include <deque>

#include "../../misc/utils.h"

namespace Model {
namespace Drawing {

class Element;

}
}

#include "UpdateElement.h"
#include "Drawing.h"

namespace Model {
namespace Drawing {

class Element : public UpdateElement { // Base class for all Drawing elements.  Not to be used directly.
	friend class Drawing;
public:
	Element();
	virtual ~Element();
	osg::ref_ptr<osg::Group> osgnode;
	osg::ref_ptr<osg::Geode> osggeode;
	//void update(); // Update using depth and resolution settings for Drawing
	//void update(uint depth, uint resolution); // Update this Element and any that this Element depends on
	void update();
	void modified();
	std::string getClassName();
	std::string getName();
	std::string getDescription();
	void setName(std::string name);
	virtual std::string printAttributes();
	void dependOn(Element* element); // Mark this element as having an update dependency on another element
	void unDependOn(Element* element);
protected:
	virtual void updateImpl(uint resolution); // Update code added by subclass
	bool updated;
	bool modifiedSinceUpdate;
	Drawing* container;
	osg::ref_ptr<osg::Geometry> osggeom;
	//osg::ref_ptr<osg::Vec2Array> verts;
	//osg::ref_ptr<osg::DrawElementsUInt> drawelements;
	//std::deque<Element*> updateDependentElements;
	/*
	 * UpdateFirst: these elements must be updated first
	 * UpdateAfter: these elements should be updated after this one.  These elements necessarily have current element in their UpdateFirst arrays.
	 */
	std::deque<Element*> updateFirstElements;
	std::deque<Element*> updateAfterElements;
	std::string instanceclassname;
	std::string name;
};

template <typename ElementSubclass>
inline ElementSubclass* castElement(std::string name, Element* element) {
	printf("%s\n",name.c_str());
	printf("%s\n",element->getClassName().c_str());
}

#define Model_Drawing_ELEMENT_CAST(ElementSubclass, element) \
	Model::Drawing::castElement<ElementSubclass>(std::string(#ElementSubclass), element);

} /* namespace Drawing */
} /* namespace Model */

#endif /* ELEMENT_H_ */
