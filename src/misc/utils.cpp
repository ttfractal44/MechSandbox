/*
 * utils.cpp
 *
 *  Created on: Dec 9, 2014
 *      Author: theron
 */




#include "utils.h"
#include <string>
#include <SDL2/SDL.h>
#include <stdio.h>


std::string resourcepath = "resources/";

std::string readResource(std::string path) {
	SDL_RWops *file = SDL_RWFromFile((resourcepath+path).c_str(), "r");
	unsigned int size = file->size(file);

	char contents[size];
	file->read(file,contents,size,1);
	file->close(file);

	std::string contentsStr(contents, size);

	return contentsStr;
}

void appendVec3(std::vector<GLfloat>* vec, GLfloat x, GLfloat y, GLfloat z) {
	vec->push_back(x);
	vec->push_back(y);
	vec->push_back(z);
}
