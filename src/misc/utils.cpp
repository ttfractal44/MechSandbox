/*
 * utils.cpp
 *
 *  Created on: Feb 3, 2015
 *      Author: theron
 */

#include "utils.h"

std::string readResource(std::string path) {
	SDL_RWops *file = SDL_RWFromFile((strings::resourcePath+path).c_str(), "r");
	unsigned int size = file->size(file);

	char contents[size];
	file->read(file,contents,size,1);
	file->close(file);

	std::string contentsStr(contents, size);

	return contentsStr;
}

void printAddress(void* pointer) {
	printf("Pointer address is %p\n", pointer);
}

void print3Addresses(void* pointer1, void* pointer2, void* pointer3) {
	printf("Pointer addresses are %p %p %p\n", pointer1, pointer2, pointer3);
}

std::string stringprintf(const char * format, ...) {
	// If you are looking for sources of memory corruption, try looking here
	va_list ap;
	char dummy[1000];
	va_start(ap, format);
	uint size = vsnprintf(dummy, 0, format, ap) + 1;
	va_end(ap);

	char* newbuffer = (char*)malloc(size);
	va_start(ap, format);
	vsnprintf(newbuffer, size, format, ap);
	va_end(ap);
	std::string string = std::string(newbuffer);
	free(newbuffer);
	//std::string string = "dummytext";
	return string;
}

bool trimTrailingNewlines(std::string* string, bool trimspaces) {
	bool changed=false;
	if (string->size()>0) {
		while (string->back()=='\n' || ( trimspaces && string->back()==' ' ) ) {
			string->pop_back();
			changed=true;
		}
	}
	return changed;
}

std::string trimTrailingNewlines(std::string string, bool trimspaces) {
	trimTrailingNewlines(&string, trimspaces);
	return string;
}
