/*
 * utils.h
 *
 *  Created on: Feb 3, 2015
 *      Author: theron
 */

#ifndef UTILS_H_
#define UTILS_H_

// Library includes
#include <SDL2/SDL.h>
#include <gtk/gtk.h>
#include <string>
#include <vector>

//Project includes
#include "../misc/strings.h"

// Exports
std::string readResource(std::string path);
/*template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, void* object);*/

/*template <typename Type>
void some_templated_function();*/

/*template <typename Type>
void some_templated_function() {
	printf("some_templated_function called\n");
}*/

template <typename Type>
struct InstanceCallData {
	Type* object;
	void* (Type::*method)(void*);
	void* data;
};

template <typename Type>
void call_instance_member(InstanceCallData<Type>* call_data) {
	Type* object = call_data->object;
	void* (Type::*method)(void*) = call_data->method;
	void* data = call_data->data;
	printf("Calling method %p of object %p\n",method,object);
	//(object->*method)();
	//method();
	//dynamic_cast<type>(object).*method();
	(object->*method)(data);
}

//std::vector<int>* vec;

template <typename Type>

//                                                                                                  void (Editor::Editor::*)()
// void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void* (Type::*method)()) { // THIS WORKS (1)
//void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void* (Type::*method)(void*)) { // THIS WORKS (2)
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void* (Type::*method)(void*), void* data) { // THIS WORKS (3)
	// Hack to GTK3 to allow a member function of an object to be passed as a callback to a GTK widget

	//g_signal_connect_swapped(gtkWindow, "configure-event", G_CALLBACK(configureCallback), this);

	InstanceCallData<Type>* call_data;
	call_data = new InstanceCallData<Type>;
	call_data->object = object;
	call_data->method = method;
	call_data->data = data;

	printf("hack_g_signal_connect_classmember: object is %p, method is %p\n", object, method);

	g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_member<Type>), call_data);



}


#endif /* UTILS_H_ */
