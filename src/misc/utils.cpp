/*
 * utils.cpp
 *
 *  Created on: Feb 3, 2015
 *      Author: theron
 */

#include "utils.h"

/*
// Library includes
#include <SDL2/SDL.h>
#include <gtk/gtk.h>
#include <string>
#include <vector>

//Project includes
#include "../misc/strings.h"
*/


std::string readResource(std::string path) {
	SDL_RWops *file = SDL_RWFromFile((strings::resourcePath+path).c_str(), "r");
	unsigned int size = file->size(file);

	char contents[size];
	file->read(file,contents,size,1);
	file->close(file);

	std::string contentsStr(contents, size);

	return contentsStr;
}

/*template <typename Type>
class ClassMemberFunctionPtr {
public:
	ClassMemberFunctionPtr(Type* )
private:
	void (Type::*member)(void*);
	Type* instance;
};*/



/*
struct InstanceCallData {
	void * object;
	void * type;
	void * (*method)();
	void * data;
};

void call_instance_method(InstanceCallData* call_data) {
	void * object = call_data->object;
	void * type = call_data->type;
	void * (*method)() = call_data->method;
	//void * data = call_data->data;
	printf("Calling method %p of object %p\n",method,object);
	//(object->*method)();
	//method();
	//dynamic_cast<type>(object).*method();
}

void hack_g_signal_connect_classmethod(void * instance, const char * detailed_signal, void * type, void * object, void* (*method)(), void * data) {
	// Hack to GTK3 to allow a member function of an object to be passed as a callback to a GTK widget

	//g_signal_connect_swapped(gtkWindow, "configure-event", G_CALLBACK(configureCallback), this);

	InstanceCallData* call_data = new InstanceCallData;
	call_data->object = object;
	call_data->type = type;
	call_data->method = method;
	call_data->data = data;

	g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_method), call_data);



}
 */
