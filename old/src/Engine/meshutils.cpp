/*
 * meshutils.cpp
 *
 *  Created on: Jan 30, 2015
 *      Author: theron
 */

#include "datastructures.h"


namespace Engine {

/*void appendVertex(IndexedGraphicsGeomMesh* mesh,
		GLfloat x,
		GLfloat y,
		GLfloat z,
		GLfloat normal_x,
		GLfloat normal_y,
		GLfloat normal_z,
		GLfloat diffuse_r=1,
		GLfloat diffuse_g=1,
		GLfloat diffuse_b=1,
		GLfloat specular_r=0,
		GLfloat specular_g=0,
		GLfloat specular_b=0,
		GLfloat specularpower=1,
		GLfloat texture_u,
		GLfloat texture_v
		) {
	mesh->vertices.push_back(x);
	mesh->vertices.push_back(y);
	mesh->vertices.push_back(z);
	mesh->normals.push_back(normal_x);
	mesh->normals.push_back(normal_y);
	mesh->normals.push_back(normal_z);
	mesh->diffusecolor.push_back(diffuse_r);
	mesh->diffusecolor.push_back(diffuse_g);
	mesh->diffusecolor.push_back(diffuse_b);
	mesh->specularcolor.push_back(specular_r);
	mesh->specularcolor.push_back(specular_g);
	mesh->specularcolor.push_back(specular_b);
	mesh->specularpower.push_back(specularpower);
	mesh->texcoords.push_back(texture_u);
	mesh->texcoords.push_back(texture_v);
}

vertexGraphicsGeomDataPointers getVertexDataPointers(IndexedGraphicsGeomMesh* mesh, GLuint index) {
	vertexGraphicsGeomDataPointers pointers;
	pointers.x = &mesh->vertices.at(index*3+0);
	pointers.y = &mesh->vertices.at(index*3+1);
	pointers.z = &mesh->vertices.at(index*3+2);
	pointers.normal_x = &mesh->normals.at(index*3+0);
	pointers.normal_y = &mesh->normals.at(index*3+1);
	pointers.normal_z = &mesh->normals.at(index*3+2);
	pointers.diffuse_r = &mesh->diffusecolor.at(index*3+0);
	pointers.diffuse_g = &mesh->diffusecolor.at(index*3+1);
	pointers.diffuse_b = &mesh->diffusecolor.at(index*3+2);
	pointers.specular_r = &mesh->specularcolor.at(index*3+0);
	pointers.specular_g = &mesh->specularcolor.at(index*3+1);
	pointers.specular_b = &mesh->specularcolor.at(index*3+2);
	pointers.specularpower = &mesh->specularpower.at(index);
	pointers.texture_u = &mesh->texcoords.at(index*2+0);
	pointers.texture_v = &mesh->texcoords.at(index*2+1);
	return pointers;
}





void appendTriangle*/




}
