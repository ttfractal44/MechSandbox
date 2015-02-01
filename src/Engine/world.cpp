/*
 * world.cpp
 *
 *  Created on: Dec 9, 2014
 *      Author: theron
 */




#include "world.h"
#include "glrendering.h"
#include <stdio.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>


namespace Engine {

	World::Entity* newEntity(World* world) {
		World::Entity* newentityobject = new World::Entity;
		world->entities.push_back(newentityobject);
		newentityobject->world = world;
		newentityobject->shaderProgram = world->basicEntityShaderProgram;
		if (world->renderWorld) {
			printf("Entity shaderprogram: %i\n",newentityobject->shaderProgram);
			initializeEntityDrawing(newentityobject);
		}
		return newentityobject;
	}

	World::Camera* newCamera(World* world) {
		World::Camera* newcameraobject = new World::Camera;
		world->cameras.push_back(newcameraobject);
		return newcameraobject;
	}

	void setCurrentCamera(World* world, World::Camera* camera) {
		//world->currentSingleUserCamera = camera;
		world->renderCamera = camera;
		world->controlledCamera = camera;
	}

	void setRenderCamera(World* world, World::Camera* camera) {
		world->renderCamera = camera;
	}

	void setControlledCamera(World* world, World::Camera* camera) {
		world->controlledCamera = camera;
	}

	glm::vec3 getCameraUpVector(World::Camera* camera) {
		return glm::vec3(-cos(camera->yaw)*sin(camera->pitch),-sin(camera->yaw)*sin(camera->pitch),cos(camera->pitch));
	}

	glm::vec3 getCameraForwardVector(World::Camera* camera) {
		return glm::vec3(cos(camera->yaw)*cos(camera->pitch),sin(camera->yaw)*cos(camera->pitch),sin(camera->pitch));
	}

	glm::vec3 getCameraRightVector(World::Camera* camera) {
		return glm::vec3(sin(camera->yaw),-cos(camera->yaw),0.f);
	}

}
