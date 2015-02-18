/*
 * Camera.cpp
 *
 *  Created on: Feb 14, 2015
 *      Author: theron
 */

#include "Camera.h"

namespace Client {

osg::Vec3d getCameraUpVector(Camera* camera) {
	return osg::Vec3d(-cos(camera->yaw)*sin(camera->pitch),-sin(camera->yaw)*sin(camera->pitch),cos(camera->pitch));
}
osg::Vec3d getCameraForwardVector(Camera* camera) {
	return osg::Vec3d(cos(camera->yaw)*cos(camera->pitch),sin(camera->yaw)*cos(camera->pitch),sin(camera->pitch));
}
osg::Vec3d getCameraRightVector(Camera* camera) {
	return osg::Vec3d(sin(camera->yaw),-cos(camera->yaw),0.f);
}

} /* namespace Client */
