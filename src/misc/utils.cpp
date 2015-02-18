/*
 * utils.cpp
 *
 *  Created on: Feb 3, 2015
 *      Author: theron
 */

#include "utils.h"


// Library includes
#include <SDL2/SDL.h>
#include <string>

//Project includes
#include "../misc/strings.h"



std::string readResource(std::string path) {
	SDL_RWops *file = SDL_RWFromFile((strings::resourcePath+path).c_str(), "r");
	unsigned int size = file->size(file);

	char contents[size];
	file->read(file,contents,size,1);
	file->close(file);

	std::string contentsStr(contents, size);

	return contentsStr;
}
