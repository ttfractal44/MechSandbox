/*
 * world.h
 *
 *  Created on: Dec 9, 2014
 *      Author: theron
 */

#ifndef WORLD_H_
#define WORLD_H_

#include <GL/glew.h>
#include "datastructures.h"

namespace Engine {

struct World {
	GLuint basicEntityShaderProgram;
	struct Entity {
		IndexedMesh graphicsMesh;
		IndexedMesh physicsMesh;
		glm::mat4 transformation;
		GLuint vertexArrayId;
		GLuint vertexBufferId;
		GLuint elementBufferId;
		GLuint shaderProgram;
		glm::mat4 model;
		GLuint modelMatrixLocation;
		GLuint viewMatrixLocation;
		GLuint projMatrixLocation;
		World* world;
	};
	struct Camera {
		glm::mat4 view;
		glm::mat4 proj;
		/*GLfloat x=0;
		GLfloat y=0;
		GLfloat z=0;*/
		glm::vec3 position = glm::vec3(0,0,0);
		GLfloat yaw=0;
		GLfloat pitch=0;
		GLfloat roll=0;
		GLfloat fov=90.;
	};
	std::vector<Entity*> entities;
	std::vector<Camera*> cameras;  // Okay to leave this, but it shall be used for purposes other than user camera (e.g. RT Camera objects, saving views, etc.)
	//Camera* currentSingleUserCamera;
	Camera* controlledCamera;  // These really should be moved outside of world so that world object can be used for simulation or multiuser independent of current user
	Camera* renderCamera;
	bool renderWorld=true;
};

World::Entity* newEntity(World* world);
World::Camera* newCamera(World* world);
void setCurrentCamera(World* world, World::Camera* camera);
void setRenderCamera(World* world, World::Camera* camera);
void setControlledCamera(World* world, World::Camera* camera);

glm::vec3 getCameraUpVector(World::Camera* camera);
glm::vec3 getCameraRightVector(World::Camera* camera);
glm::vec3 getCameraForwardVector(World::Camera* camera);


}



#endif /* WORLD_H_ */
