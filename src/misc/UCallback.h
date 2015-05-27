/*
 * UCallback.h
 *
 *  Created on: May 7, 2015
 *      Author: theron
 */

#ifndef UCALLBACK_H_
#define UCALLBACK_H_

#include <stdlib.h>
#include <stdio.h>

#include "utils.h"

#define UCALLBACK( function, userdataP ) /* Standard function mode */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, false, true ) // swapped=false, returns=true

#define UCALLBACK_SWAPPED( function, userdataP ) /* Swapped */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, true, true ) // swapped=true, returns=true

#define UCALLBACK_VOID( function, userdataP ) /* Standard function mode */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, false, false ) // swapped=false, returns=false

#define UCALLBACK_VOID_SWAPPED( function, userdataP ) /* Swapped */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, true, false ) // swapped=true, returns=false

class Bogus { }; // Allows casting without knowing real class name in macros

#define UCLASSCALLBACK( object, function, userdataP ) /* Standard function mode */ \
	make_new_UClassCallback_bogus( object, (void* (Bogus::*)(void*, void*)) (function) , userdataP, false, true ) // swapped=false, returns=true

#define UCLASSCALLBACK_SWAPPED( object, function, userdataP ) /* Swapped */ \
	make_new_UClassCallback_bogus( object, (void* (Bogus::*)(void*, void*)) (function) , userdataP, true, true ) // swapped=true, returns=true

#define UCLASSCALLBACK_VOID( object, function, userdataP ) /* Standard function mode */ \
	make_new_UClassCallback_bogus( object, (void* (Bogus::*)(void*, void*)) (function) , userdataP, false, false ) // swapped=false, returns=false

#define UCLASSCALLBACK_VOID_SWAPPED( object, function, userdataP ) /* Swapped */ \
	make_new_UClassCallback_bogus( object, (void* (Bogus::*)(void*, void*)) (function) , userdataP, true, false ) // swapped=true, returns=false

class UCallback {
protected:
	void* (*function)(void*, void*);
	void* userdataP;
	bool swapped;
	bool returns;
	bool classmode;
	void (*templateclasscallback_destroyfunction)(void*);
	char text[20];
public:
	const void* safetyPtr;
	UCallback( void* (*function)(void*, void*) , void* userdataP , bool swapped, bool returns );  // Standard function mode
	virtual ~UCallback();
	virtual void* call(void* callerdataP);
};

void* ucallback_call(void* callerdataP, UCallback* callback);

void* ucallback_call_2(void* callerdataP, void* data2, UCallback* callback); // For GTK which gives two "callerdata"s

template <typename Class>
struct UTemplateClassCallback {
	Class* object;
	void* (Class::*function)(void*, void*);
	void* userdataP;
	bool swapped;
};

template <typename Class>
void* utemplateclasscallback_call(void* callerdataP, UTemplateClassCallback<Class>* callback) {
	if (!callback->swapped) { // NOT swapped
		return (callback->object->*callback->function)(callerdataP, callback->userdataP);
	} else { // SWAPPED
		return (callback->object->*callback->function)(callback->userdataP, callerdataP);
	}
}

template <typename Class>
void utemplateclasscallback_destroy(UTemplateClassCallback<Class>* callback) {
	delete callback;
}

template <typename Class>
class UClassCallback : public UCallback {
public:
	UClassCallback(Class* _object, void* (Bogus::*_function)(void*, void*) , void* _userdataP , bool _swapped, bool _returns) : UCallback((void* (*)(void *, void *))NULL, NULL, false, true) {
		function = (void* (*)(void*, void*))(&utemplateclasscallback_call<Class>);
		userdataP = new UTemplateClassCallback<Class>{_object, (void* (Class::*)(void*, void*))_function, _userdataP, _swapped};  // Repurposing userdataP like this is probably a bad idea.  Consider a different variable and special case handling in call()
		swapped = false;
		returns = _returns;
		classmode = true;
		templateclasscallback_destroyfunction = (void (*)(void*))(&utemplateclasscallback_destroy<Class>);

		/*function = NULL;
		object = _object;
		memberfunction = (void* (Class::*)(void*, void*))_function;
		userdataP = _userdataP;
		swapped = _swapped;
		returns = _returns;
		classmode = true; // But this should be obsolete*/
		//templateclasscallback_destroyfunction = NULL;   // Fix this later

	}
	virtual ~UClassCallback() {
		templateclasscallback_destroyfunction(userdataP);
	}
	/*void* call(void* callerdataP) {
		if (!swapped) { // NOT swapped
			return (object->*memberfunction)(callerdataP, userdataP);
		} else { // SWAPPED
			return (object->*memberfunction)(userdataP, callerdataP);
		}
		//printf("Classcallback called\n");
		//return NULL;
	}
private:
	Class* object;
	void* (Class::*memberfunction)(void*, void*);*/
};

template <typename Class>
UCallback* make_new_UClassCallback(Class* object, void* (Class::*function)(void*, void*) , void* userdataP , bool swapped, bool returns) {
	return new UClassCallback<Class>(object, function, userdataP, swapped, returns);
}

template <typename Class>
UCallback* make_new_UClassCallback_bogus(Class* object, void* (Bogus::*function)(void*, void*) , void* userdataP , bool swapped, bool returns) {
	return new UClassCallback<Class>(object, function, userdataP, swapped, returns);
}

#endif /* UCALLBACK_H_ */
