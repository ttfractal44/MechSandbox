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

namespace Model {
namespace Drawing {

class Element { // Base class for all Drawing elements.  Not to be used directly.
	friend class Drawing;
public:
	Element();
	virtual ~Element();
	osg::Group* osgnode;
	osg::Geode* osggeode;
	void update(uint depth, uint resolution); // Update this Element and any that this Element depends on
	void modified();
protected:
	virtual void updateImpl(uint depth, uint resolution); // Update code added by subclass
	bool updated;
	bool modifiedSinceUpdate;
	osg::Geometry* osggeom;
	osg::Vec2Array* verts;
	osg::DrawElementsUInt* drawelements;
	std::deque<Element*> updateDependentElements;
};

} /* namespace Drawing */
} /* namespace Model */

#endif /* ELEMENT_H_ */
