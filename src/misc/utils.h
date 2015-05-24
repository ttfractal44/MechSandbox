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
#include <deque>
#include <algorithm>

//Project includes
#include "../misc/strings.h"

// Exports
std::string readResource(std::string path);

// Macros

#define STL_CONTAINS(container, value) \
	(std::find(container.begin(), container.end(), value)!=container.end())

// Implementations (cannot separate Delcaration and Implementation for functions using templates)

#define INSTANCE_CALLBACK_DATA_FIXED(type, object, method, data, returnvalue) \
		(new InstanceCallData<type>{object, (bool (type::*)(void*,void*))(method),(void*)data,returnval,false})
		//(new InstanceCallData<type>{object, (void (type::*)(void*))(method),(void*)data,returnval})

#define INSTANCE_CALLBACK_DATA(type, object, method, data) \
		(new InstanceCallData<type>{object, (bool (type::*)(void*,void*))(method),(void*)data,false,true})
		//(new InstanceCallData<type>{object, (bool (type::*)(void*))(method),(void*)data})

#define INSTANCE_CALLBACK_FIXED(type, object, method, returnvalue) \
		(new InstanceCallData<type>{object, (bool (type::*)(void*,void*))(method),NULL,returnval,false})
		//(new InstanceCallData<type>{object, (void (type::*)())(method),returnval})

#define INSTANCE_CALLBACK(type, object, method) \
		(new InstanceCallData<type>{object, (bool (type::*)(void*,void*))(method),NULL,false,true})
		//(new InstanceCallData<type>{object, (bool (type::*)())(method)})



template <typename Type>
struct InstanceCallData {
	/*InstanceCallData( // Data passed to function, return value is fixed
		Type* object,
		void (Type::*method)(void*),
		void* userdata,
		bool returnValue)
		: object(object),
		  method((bool (Type::*)(void*))(method)),
		  userdata(userdata),
		  defaultReturnValue(returnValue),
		  useReturnValue(false)
		{}
	InstanceCallData( // Data passed to function, value is returned by function
		Type* object,
		bool (Type::*method)(void*),
		void* userdata)
		: object(object),
		  method(method),
		  userdata(userdata),
		  defaultReturnValue(false),
		  useReturnValue(true)
		{}
	InstanceCallData( // No data passed to function, return value is fixed
		Type* object,
		void (Type::*method)(),
		bool returnValue)
		: object(object),
		  method((bool (Type::*)(void*))(method)),
		  userdata(NULL),
		  defaultReturnValue(returnValue),
		  useReturnValue(false)
		{}
	InstanceCallData( // No data passed to function, value is returned by function
		Type* object,
		bool (Type::*method)())
		: object(object),
		  method((bool (Type::*)(void*))(method)),
		  userdata(NULL),
		  defaultReturnValue(false),
		  useReturnValue(true)
		{}*/
	Type* object;
	bool (Type::*method)(void*,void*);
	void* userdata;
	bool defaultReturnValue;
	bool useReturnValue;
};

template <typename Type>
bool call_instance_member(InstanceCallData<Type>* call_data, void* callerdata=NULL) {
	bool returnValue = (call_data->object->*call_data->method)(call_data->userdata, callerdata);
	if (call_data->useReturnValue) {
		return returnValue;
	} else {
		return call_data->defaultReturnValue;
	}
}

template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, bool (Type::*method)(void*), void* userdata) {
	// Hack to GTK3 to allow a member function of an object to be passed as a callback to a GTK widget

	//g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_member<Type>), (new InstanceCallData<Type>{object, method, userdata}) );
	g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_member<Type>), INSTANCE_CALLBACK_DATA(Type, object, method, userdata) );

}

template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void (Type::*method)(void*), bool returnval, void* userdata) { // Fixed boolean return
	// Hack to GTK3 to allow a member function of an object to be passed as a callback to a GTK widget

	//g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_member<Type>), (new InstanceCallData<Type>{object, method, userdata, returnval}) );
	g_signal_connect_swapped(instance, detailed_signal, G_CALLBACK(call_instance_member<Type>), INSTANCE_CALLBACK_DATA_FIXED(Type, object, method, userdata, returnval) );

}

template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, bool (Type::*method)()) { // No argument to callback
	//hack_g_signal_connect_classmember<Type>(instance, detailed_signal, object, (void* (Type::*)(void*))method, NULL);
	hack_g_signal_connect_classmember<Type>(instance, detailed_signal, object, (bool (Type::*)(void*))(method), NULL);
}

template <typename Type>
void hack_g_signal_connect_classmember(void * instance, const char * detailed_signal, Type* object, void (Type::*method)(), bool returnval) { // Fixed boolean return, No argument to callback
	//hack_g_signal_connect_classmember<Type>(instance, detailed_signal, object, (void* (Type::*)(void*))method, NULL);
	hack_g_signal_connect_classmember<Type>(instance, detailed_signal, object, (void (Type::*)(void*))(method), returnval, NULL);
}

inline void hello() {
	printf("Hello world\n");
}

#endif /* UTILS_H_ */
