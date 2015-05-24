/*
 * mathutil.h
 *
 *  Created on: May 13, 2015
 *      Author: theron
 */

#ifndef MATHUTIL_H_
#define MATHUTIL_H_

struct fraction {
	int num;
	int dom;
};

inline fraction floatToPower2Fraction(double f, uint limit=1024) {
	fraction fract;
	uint d=1;
	while (d<limit) {
		//if (fmod(f*((double)d),1.0)==0) {
		if (floor(f*d)/d==f) {
			break;
		}
		d*=2;
	}

	fract.num = f*((double)d);
	fract.dom = d;

	if (fract.num/(double)fract.dom!=f) {
		fract.num = 0;
		fract.dom = 0;
	}

	return fract;
}

inline void printfraction(fraction fract) {
	printf("%d/%d\n",fract.num,fract.dom);
}

inline float Vec2Distance(osg::Vec2 pos1, osg::Vec2 pos2) {
	return sqrt(std::pow(pos1.x()-pos2.x(),2)+std::pow(pos1.y()-pos2.y(),2));
}

#endif /* MATHUTIL_H_ */
