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

class UCallback {
protected:
	void* (*function)(void*, void*);
	void* userdataP;
	bool swapped;
	bool classmode;
	void (*templateclasscallback_destroyfunction)(void*);
public:
	UCallback( void* (*function)(void*, void*) , void* userdataP , bool swapped );  // Standard function mode
	UCallback( void* (*function)(void*) ); // No userdata requested
	UCallback( void* (*function)(void*) , void* userdataP );  // No callerdata requested

	virtual ~UCallback();
	void* call(void* callerdataP);
};

void* ucallback_call(void* callerdataP, UCallback* callback);

template <typename Class>
struct UTemplateClassCallback {
	Class* object;
	void* (Class::*function)(void*, void*);
	void* userdataP;
	bool swapped;
};

/*template <typename Class>
void* utemplateclasscallback_call(void* callerdataP, UTemplateClassCallback<Class>* callback);

template <typename Class>
void utemplateclasscallback_destroy(UTemplateClassCallback<Class>* callback);*/

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

}

template <typename Class>
class UClassCallback : public UCallback {
public:
	UClassCallback(Class* object, void* (Class::*_function)(void*, void*) , void* _userdataP , bool _swapped=false) : UCallback(NULL, NULL, false) {
		function = (void* (*)(void*, void*))(&utemplateclasscallback_call<Class>);
		//function = &utemplateclasscallback_call<Class>;
		userdataP = new UTemplateClassCallback<Class>{object, _function, _userdataP, _swapped};  // Repurposing userdataP like this is probably a bad idea.  Consider a different variable and special case handling in call()
		swapped = false;
		classmode = true;
		templateclasscallback_destroyfunction = (void (*)(void*))(&utemplateclasscallback_destroy<Class>);
	}
	UClassCallback(Class* object, void* (Class::*function)(void*) ) /* No userdata requested */ :
		UClassCallback(object, (void* (Class::*)(void*,void*))(function), NULL, false) {}
	UClassCallback(Class* object, void* (Class::*function)(void*) , void* userdataP ) /* No callerdata requested */ :
		UClassCallback(object, (void* (Class::*)(void*,void*))(function), userdataP, true) {}
	/*template <typename Class>*/ //UClassCallback(Class* object, void* (Class::*function)(void*, void*) , void* userdataP, bool swapped );  // Class member mode
	/*template <typename Class>*/ //UClassCallback(Class* object, void* (Class::*function)(void*) );  // No userdata requested
	/*template <typename Class>*/ //UClassCallback(Class* object, void* (Class::*function)(void*) , void* userdataP );  // No callerdata requested
	virtual ~UClassCallback() {

	}


};

#endif /* UCALLBACK_H_ */
