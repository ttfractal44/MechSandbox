/*
 * CopySequence.h
 *
 *  Created on: Apr 1, 2015
 *      Author: theron
 */

#ifndef COPYSEQUENCE_H_
#define COPYSEQUENCE_H_

#include "Curve.h"

namespace Geometry {

class CopySequence: public Curve {
public:
	CopySequence();
	virtual ~CopySequence();
	void generateOsgGeometry(uint res);
};

} /* namespace Geometry */

#endif /* COPYSEQUENCE_H_ */
