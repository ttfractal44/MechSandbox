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

// Implementations (cannot separate Delcaration and Implementation for functions using templates)

template <typename Type>
struct InstanceCallData {
	Type* object;
	void (Type::*method)(void*);
	void* data;
};

template <typename Type>
void call_instance_member(InstanceCallData<Type>* call_data) {
	Type* object = call_data->object;
	void (Type::*method)(void*) = call_data->method;
	void* data = call_data->data;
	(object->*method)(data);
}

template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void (Type::*method)(void*), void* data) {
	// Hack to GTK3 to allow a member function of an object to be passed as a callback to a GTK widget

	InstanceCallData<Type>* call_data;
	call_data = new InstanceCallData<Type>;
	call_data->object = object;
	call_data->method = method;
	call_data->data = data;

	g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_member<Type>), call_data);

}

template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void (Type::*method)()) {
	//hack_g_signal_connect_classmember<Type>(instance, detailed_signal, object, (void* (Type::*)(void*))method, NULL);
	hack_g_signal_connect_classmember<Type>(instance, detailed_signal, object, (void (Type::*)(void*))(method), NULL);
}

#endif /* UTILS_H_ */
