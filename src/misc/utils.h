/*
 * utils.h
 *
 *  Created on: Dec 9, 2014
 *      Author: theron
 */

#ifndef UTILS_H_
#define UTILS_H_

#include <string>
#include <SDL2/SDL.h>
#include <vector>
#include <GL/glew.h>

const double PI=3.14159265358979323846;

std::string readResource(std::string path);

void appendVec3(std::vector<GLfloat>* vec, GLfloat x, GLfloat y, GLfloat z);

#endif /* UTILS_H_ */
