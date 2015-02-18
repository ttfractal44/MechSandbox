/*
 * World.cpp
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#include "World.h"

namespace World {

Entity* newEntity(World* world) {
	Entity* newentityobject = new Entity;
	world->entities.push_back(newentityobject);
	newentityobject->world = world;
	//newentityobject->shaderProgram = world->basicEntityShaderProgram;
	/*if (world->renderWorld) {
		printf("Entity shaderprogram: %i\n",newentityobject->shaderProgram);
		initializeEntityDrawing(newentityobject);
	}*/
	return newentityobject;
}

Camera* newCamera(World* world) {
	Camera* newcameraobject = new Camera;
	world->cameras.push_back(newcameraobject);
	return newcameraobject;
}

glm::vec3 getCameraUpVector(Camera* camera) {
	return glm::vec3(-cos(camera->yaw)*sin(camera->pitch),-sin(camera->yaw)*sin(camera->pitch),cos(camera->pitch));
}

glm::vec3 getCameraForwardVector(Camera* camera) {
	return glm::vec3(cos(camera->yaw)*cos(camera->pitch),sin(camera->yaw)*cos(camera->pitch),sin(camera->pitch));
}

glm::vec3 getCameraRightVector(Camera* camera) {
	return glm::vec3(sin(camera->yaw),-cos(camera->yaw),0.f);
}


} /* namespace World */
