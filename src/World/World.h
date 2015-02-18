/*
 * World.h
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#ifndef WORLD_H_
#define WORLD_H_

#include "datastructures.h"

namespace World {

struct graphicsGeomVertex {
	GLfloat x;
	GLfloat y;
	GLfloat z;
	GLfloat normal_x;
	GLfloat normal_y;
	GLfloat normal_z;
	GLfloat diffuse_r;
	GLfloat diffuse_g;
	GLfloat diffuse_b;
	GLfloat specular_r;
	GLfloat specular_g;
	GLfloat specular_b;
	GLfloat specularpower;
	GLfloat texture_u;
	GLfloat texture_v;
};

struct IndexedMesh {
	std::vector<GLfloat> vertices;
	std::vector<GLuint> elements;
	GLuint numelements;
};

typedef struct World World_;

struct Entity {
	IndexedMesh graphicsMesh;
	IndexedMesh physicsMesh;
	//glm::mat4 transformation;
	GLuint vertexArrayId;
	GLuint vertexBufferId;
	GLuint elementBufferId;
	GLuint shaderProgram;			// TODO:  How to keep these outside of World data, but still have the data efficiently retrieved by rendering code?
	glm::mat4 model;
	GLuint modelMatrixLocation;
	GLuint viewMatrixLocation;
	GLuint projMatrixLocation;
	World_* world;
};

struct Camera {
	glm::mat4 view;
	glm::mat4 proj;
	glm::vec3 position = glm::vec3(0,0,0);
	GLfloat yaw=0;
	GLfloat pitch=0;
	GLfloat roll=0;
	GLfloat fov=90;
};

struct World {
	std::vector<Entity*> entities;
	std::vector<Camera*> cameras;
	//std::vector<Template*> templates;  // TODO
};

} /* namespace World */

#endif /* WORLD_H_ */
