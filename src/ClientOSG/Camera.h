/*
 * Camera.h
 *
 *  Created on: Feb 14, 2015
 *      Author: theron
 */

#ifndef CAMERA_H_
#define CAMERA_H_

#include <osg/Vec3d>

namespace Client {

struct Camera {
	//glm::mat4 view;
	//glm::mat4 proj;
	/*GLfloat x=0;
	GLfloat y=0;
	GLfloat z=0;*/
	//glm::vec3 position = glm::vec3(0,0,0);
	osg::Vec3f position;// = osg::Vec3f();
	float yaw=0;
	float pitch=0;
	float roll=0;
	float fov=90.;
};

osg::Vec3d getCameraUpVector(Camera* camera);
osg::Vec3d getCameraRightVector(Camera* camera);
osg::Vec3d getCameraForwardVector(Camera* camera);

} /* namespace Client */

#endif /* CAMERA_H_ */
