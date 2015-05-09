/*
 * Callback.h
 *
 *  Created on: May 4, 2015
 *      Author: theron
 */

#ifndef CALLBACK_H_
#define CALLBACK_H_

#include <stdlib.h>

class Callback {
public:
	Callback(void* (*function)(void*,void*), void* userdata, bool swapped)
	: function(function),
	  userdata(userdata),
	  swapped(swapped)
	{}
	virtual ~Callback() {}
	void* (*function)(void*,void*);
	void* userdata;
	bool swapped;
};

template <typename Type>
class ClassCallback {
public:
	/*ClassCallback(void* (*function)(void*,void*), void* userdata)
	: function(function),
	  userdata(userdata),
	  classmode(false),
	  object(NULL),
	  method(NULL)
	{}*/
	ClassCallback(Type* object, void* (Type::*method)(void*,void*), void* userdata, bool swapped)
	: //function(NULL),
	  userdata(userdata),
	  //classmode(true),
	  object(object),
	  method(method),
	  swapped(swapped)
	{}
	virtual ~ClassCallback() {

	}
// protected: // Can't get friend to work with templates...  Consider fixing if accidentally modifying the parameters ever becomes an issue
	// Note - void means function return nothing, while void* means function has a return of a pointer to an arbitrary type (?)
	//void* (*function)(void*,void*);
	Type* object;
	void* (Type::*method)(void*,void*);
	void* userdata;
	//bool defaultReturnValue;
	//bool useReturnValue;
	//bool classmode;
	bool swapped;
};

template <typename Type>
void* classcallback_call(void* callerdata, ClassCallback<Type>* callback) {
	if (callback->swapped) {
		return (callback->object->*callback->method)(callback->userdata, callerdata);
	} else {
		return (callback->object->*callback->method)(callerdata, callback->userdata);
	}
}

inline void* callback_call(void* callerdata, Callback* callback) {
	if (callback->swapped) {
		return (callback->function)(callback->userdata, callerdata);
	} else {
		return (callback->function)(callerdata, callback->userdata);
	}
}

#define CLASSCALLBACK(type, object, method, userdata) \
		new ClassCallback<type>(object, (void* (type::*)(void*,void*))(method), (void*)(userdata), false)

#define CALLBACK(function, userdata) \
		new Callback((void* (*)(void*,void*))(function), (void*)(userdata), false)

#define CALLBACK_CLASS(type, object, method, userdata) \
		new Callback((void* (*)(void*,void*))(&(classcallback_call<type>)), new ClassCallback<type>(object, (void* (type::*)(void*,void*))(method), (void*)(userdata), false), false)

#define CLASSCALLBACK_SWAPPED(type, object, method, userdata) \
		new ClassCallback<type>(object, (void* (type::*)(void*,void*))(method), (void*)(userdata), true)

#define CALLBACK_SWAPPED(function, userdata) \
		new Callback((void* (*)(void*,void*))(function), (void*)(userdata), true)

#define CALLBACK_CLASS_SWAPPED(type, object, method, userdata) \
		new Callback((void* (*)(void*,void*))(&(classcallback_call<type>)), new ClassCallback<type>(object, (void* (type::*)(void*,void*))(method), (void*)(userdata), true), false)


#endif /* CALLBACK_H_ */
