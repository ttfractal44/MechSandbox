/*
 * UCallback.cpp
 *
 *  Created on: May 7, 2015
 *      Author: theron
 */

#include "UCallback.h"



UCallback::UCallback( void* (*_function)(void*, void*) , void* _userdataP , bool _swapped=false ) {
	function = _function;
	userdataP = _userdataP;
	swapped = _swapped;
	classmode = false;
	templateclasscallback_destroyfunction = NULL;
}

UCallback::UCallback( void* (*function)(void*) ) /* No userdata requested */ : UCallback((void* (*)(void*,void*))(function), NULL, false) {}

UCallback::UCallback( void* (*function)(void*) , void* userdataP ) /* No callerdata requested */ : UCallback((void* (*)(void*,void*))(function), userdataP, true) {}

/*template <typename Class> UCallback::UCallback(Class* object, void* (Class::*_function)(void*, void*) , void* _userdataP , bool _swapped=false) {
	function = &utemplateclasscallback_call<Class>;
	userdataP = new UTemplateClassCallback<Class>{object, _function, _userdataP, false};  // Repurposing userdataP like this is probably a bad idea.  Consider a different variable and special case handling in call()
	swapped = _swapped;
	classmode = true;
	templateclasscallback_destroyfunction = &utemplateclasscallback_destroy<Class>;
}*/

/*template <typename Class> UClassCallback<Class>::UClassCallback() {

}*/

/*template <typename Class> UClassCallback<Class>::UClassCallback(Class* object, void* (Class::*_function)(void*, void*) , void* _userdataP , bool _swapped=false) {
	function = &utemplateclasscallback_call<Class>;
	userdataP = new UTemplateClassCallback<Class>{object, _function, _userdataP, false};  // Repurposing userdataP like this is probably a bad idea.  Consider a different variable and special case handling in call()
	swapped = _swapped;
	classmode = true;
	templateclasscallback_destroyfunction = &utemplateclasscallback_destroy<Class>;
}*/

//template <typename Class> UCallback::UCallback(Class* object, void* (Class::*function)(void*) ) /* No userdata requested */ : UCallback(object, (void* (Class::*)(void*,void*))(function), NULL, false) {}

//template <typename Class> UCallback::UCallback(Class* object, void* (Class::*function)(void*) , void* userdataP ) /* No callerdata requested */ : UCallback(object, (void* (Class::*)(void*,void*))(function), userdataP, true) {}

UCallback::~UCallback() {
	if (classmode) {
		//delete userdataP; // Since this is actually UTemplateClassCallback which in itself contains the real userdataP;
		// Somehow the function needs to be cleaned up, except this is a void* because we cannot store a templated type pointer.
		templateclasscallback_destroyfunction(userdataP);
	}
}



void* UCallback::call(void* callerdataP) {
	if (!swapped) { // NOT swapped
		return function(callerdataP, userdataP);
	} else { // SWAPPED
		return function(userdataP, callerdataP);
	}
}

void* ucallback_call(void* callerdataP, UCallback* callback) {
	if (callback) {
		return callback->call(callerdataP);
	} else {
		printf("ucallback_call called for nonexistent UCallback %p!  Returning a NULL pointer.\n",callback);
		return NULL;
	}
}

