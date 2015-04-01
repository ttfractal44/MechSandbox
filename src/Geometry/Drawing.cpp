/*
 * Drawing.cpp
 *
 *  Created on: Mar 31, 2015
 *      Author: theron
 */

#include "Drawing.h"

namespace Geometry {

Drawing::Drawing() {
	osggeom = new osg::Geometry();
	meshUpdated = false;
	lastRes=0;
}

Drawing::~Drawing() {
	//delete osggeom;
}

osg::Geometry* Drawing::getDrawable(uint res) {
	if (!meshUpdated || lastRes!=res) {
		osg::Vec2Array* verts = new osg::Vec2Array();
		for (uint i=0; i<curves.size(); i++) {
			// Append verts from curve to verts
			Polyline* polyline = curves.at(i)->getPolyline(res);
			uint start = verts->size();
			uint end = start+polyline->array.size();
			verts->insert(verts->end(), polyline->array.begin(), polyline->array.end());
			osg::DrawElementsUInt* elements = new osg::DrawElementsUInt((polyline->closed ? osg::PrimitiveSet::LINE_STRIP : osg::PrimitiveSet::LINE_LOOP), 0);
			for (uint n=start; n<end; n++) {
				elements->push_back(n);
			}
			osggeom->addPrimitiveSet(elements);
		}
		osggeom->setVertexArray(verts);
		meshUpdated=true;
	}

	/*osg::Vec3Array* verts = new osg::Vec3Array();
	verts->push_back(osg::Vec3(0,0,0));
	verts->push_back(osg::Vec3(1,0,0));
	verts->push_back(osg::Vec3(0,1,0));
	verts->push_back(osg::Vec3(1,1,0));
	osggeom->setVertexArray(verts);
	osg::DrawElementsUInt* elements = new osg::DrawElementsUInt(osg::PrimitiveSet::LINE_LOOP, 0);
	elements->push_back(0);
	elements->push_back(1);
	elements->push_back(2);
	elements->push_back(3);
	osggeom->addPrimitiveSet(elements);*/

	return osggeom;
}

void Drawing::markUpdated() {
	meshUpdated=false;
}

} /* namespace Geometry */
