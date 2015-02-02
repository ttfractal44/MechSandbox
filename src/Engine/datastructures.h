/*
 * datastructures.h
 *
 *  Created on: Dec 8, 2014
 *      Author: theron
 */

#ifndef DATASTRUCTURES_H_
#define DATASTRUCTURES_H_


#include <vector>
#include <glm/glm.hpp>
#include <GL/glew.h>

namespace Engine {

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

	/*struct IndexedGraphicsGeomMesh {
		std::vector<GLfloat> vertices;
		std::vector<GLfloat> normals;
		std::vector<GLfloat> diffusecolor;
		std::vector<GLfloat> specularcolor;
		std::vector<GLfloat> specularpower;
		std::vector<GLfloat> texcoords;

		std::vector<GLuint> elements;
		GLuint numelements;
	};

	struct vertexGraphicsGeomDataPointers {
		GLfloat* x;
		GLfloat* y;
		GLfloat* z;
		GLfloat* normal_x;
		GLfloat* normal_y;
		GLfloat* normal_z;
		GLfloat* diffuse_r;
		GLfloat* diffuse_g;
		GLfloat* diffuse_b;
		GLfloat* specular_r;
		GLfloat* specular_g;
		GLfloat* specular_b;
		GLfloat* specularpower;
		GLfloat* texture_u;
		GLfloat* texture_v;
	};*/

	/*struct IndexedGeomMesh {
		std::vector<GLfloat> vertices;
		std::vector<GLuint> elements;
		GLuint numelements;
	};*/

	struct IndexedMesh {
		std::vector<GLfloat> vertices;
		std::vector<GLuint> elements;
		GLuint numelements;
	};

}



#endif /* DATASTRUCTURES_H_ */
