/*
 * UCallback.cpp
 *
 *  Created on: May 7, 2015
 *      Author: theron
 */

#include "UCallback.h"



UCallback::UCallback( void* (*_function)(void*, void*) , void* _userdataP , bool _swapped, bool _returns ) {
	safetyPtr = this;
	function = _function;
	userdataP = _userdataP;
	swapped = _swapped;
	returns = _returns;
	classmode = false;
	templateclasscallback_destroyfunction = NULL;
	sprintf(text, "real data here...");
}

UCallback::~UCallback() {
	if (classmode) {
		//delete userdataP; // Since this is actually UTemplateClassCallback which in itself contains the real userdataP;
		// Somehow the function needs to be cleaned up, except this is a void* because we cannot store a templated type pointer.
		templateclasscallback_destroyfunction(userdataP);
	}
}

void* UCallback::call(void* callerdataP) {
	/*if (classmode) {
		UClassCallback<Bogus>* callbackP = (UClassCallback<Bogus>*)callerdataP;
		UClassCallback<Bogus> callback = *callbackP;
	}*/
	//if (!classmode) {
		if (!swapped) { // NOT swapped
			return function(callerdataP, userdataP);
		} else { // SWAPPED
			return function(userdataP, callerdataP);
		}
	/*} else {
		printf("Something terrible is happening.  This probably stopped a segfault from happening.\n");
		//return ((UClassCallback<Bogus>*)this)->call(callerdataP);
		return NULL;
	}*/
}

void* ucallback_call(void* callerdataP, UCallback* callback) {
	if (callback && callback==callback->safetyPtr) {
		return callback->call(callerdataP);
	} else {
		printf("ucallback_call called for nonexistent or bogus UCallback %p!  Returning a NULL pointer.\n",callback);
		return NULL;
	}
}

void* ucallback_call_2(void* callerdataP, void* data2, UCallback* callback) {
	return ucallback_call(callerdataP, callback);
}

