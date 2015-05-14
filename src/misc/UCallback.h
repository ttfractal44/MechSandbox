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

#define UCALLBACK( function, userdataP ) /* Standard function mode */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, false, true ) // swapped=false, returns=true

#define UCALLBACK_SWAPPED( function, userdataP ) /* Swapped */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, true, true ) // swapped=true, returns=true

#define UCALLBACK_VOID( function, userdataP ) /* Standard function mode */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, false, false ) // swapped=false, returns=false

#define UCALLBACK_VOID_SWAPPED( function, userdataP ) /* Swapped */ \
	new UCallback( (void* (*)(void*, void*)) (function) , userdataP, true, false ) // swapped=true, returns=false



#define UCLASSCALLBACK( type, object, function, userdataP ) /* Standard function mode */ \
	make_new_UClassCallback( object, (void* (type::*)(void*, void*)) (function) , userdataP, false, true ) // swapped=false, returns=true

#define UCLASSCALLBACK_SWAPPED( type, object, function, userdataP ) /* Swapped */ \
	make_new_UClassCallback( object, (void* (type::*)(void*, void*)) (function) , userdataP, true, true ) // swapped=true, returns=true

#define UCLASSCALLBACK_VOID( type, object, function, userdataP ) /* Standard function mode */ \
	make_new_UClassCallback( object, (void* (type::*)(void*, void*)) (function) , userdataP, false, false ) // swapped=false, returns=false

#define UCLASSCALLBACK_VOID_SWAPPED( type, object, function, userdataP ) /* Swapped */ \
	make_new_UClassCallback( object, (void* (type::*)(void*, void*)) (function) , userdataP, true, false ) // swapped=true, returns=false

class UCallback {
protected:
	void* (*function)(void*, void*);
	void* userdataP;
	bool swapped;
	bool returns;
	bool classmode;
	void (*templateclasscallback_destroyfunction)(void*);
public:
	UCallback( void* (*function)(void*, void*) , void* userdataP , bool swapped, bool returns );  // Standard function mode

//	UCallback( void* (*function)(void*) ) /* No userdata requested */ :
//		UCallback((void* (*)(void*,void*))(function), NULL, false) {}
//	UCallback( void* (*function)(void*) , void* userdataP ) /* No callerdata requested */ :
//		UCallback((void* (*)(void*,void*))(function), userdataP, true) {}
//
//	// No returns
//	UCallback( void (*function)(void*, void*) , void* userdataP , bool swapped ) :
//		UCallback((void* (*)(void*, void*))(function), userdataP, swapped ) { returns=false; }
//	UCallback( void (*function)(void*) ) /* No userdata requested */ :
//		UCallback((void (*)(void*,void*))(function), NULL, false) {}
//	UCallback( void (*function)(void*) , void* userdataP ) /* No callerdata requested */ :
//		UCallback((void (*)(void*,void*))(function), userdataP, true) {}

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
	/*
	Multiple markers at this line
	- candidate expects 4 arguments, 5 provided
	- UClassCallback<Class>::UClassCallback(Class*, void* (Class::*)(void*, void*), void*, bool) [with Class = Editor::Editor]
	 */
public:
	UClassCallback(Class* object, void* (Class::*_function)(void*, void*) , void* _userdataP , bool _swapped, bool _returns) : UCallback((void* (*)(void *, void *))NULL, NULL, false, true) {
		function = (void* (*)(void*, void*))(&utemplateclasscallback_call<Class>);
		userdataP = new UTemplateClassCallback<Class>{object, _function, _userdataP, _swapped};  // Repurposing userdataP like this is probably a bad idea.  Consider a different variable and special case handling in call()
		swapped = false;
		returns = _returns;
		classmode = true;
		templateclasscallback_destroyfunction = (void (*)(void*))(&utemplateclasscallback_destroy<Class>);
	}

//	UClassCallback(Class* object, void* (Class::*function)(void*) ) /* No userdata requested */ :
//		UClassCallback(object, (void* (Class::*)(void*,void*))(function), NULL, false) {}
//	UClassCallback(Class* object, void* (Class::*function)(void*) , void* userdataP ) /* No callerdata requested */ :
//		UClassCallback(object, (void* (Class::*)(void*,void*))(function), userdataP, true) {}
//
//	UClassCallback(Class* object, void (Class::*function)(void*, void*) , void* userdataP , bool swapped=false) :
//		UClassCallback(object, (void* (Class::*)(void*, void*))(function), userdataP, swapped) { returns = false; }
//
//	UClassCallback(Class* object, void (Class::*function)(void*) ) /* No userdata requested */ :
//		UClassCallback(object, (void (Class::*)(void*,void*))(function), NULL, false) {}
//	UClassCallback(Class* object, void (Class::*function)(void*) , void* userdataP ) /* No callerdata requested */ :
//		UClassCallback(object, (void (Class::*)(void*,void*))(function), userdataP, true) {}

	virtual ~UClassCallback() { }
};

template <typename Class>
UCallback* make_new_UClassCallback(Class* object, void* (Class::*function)(void*, void*) , void* userdataP , bool swapped, bool returns) {
	return new UClassCallback<Class>(object, function, userdataP, swapped, returns);
}

template <typename Class>
UCallback* make_new_UClassCallback(Class* object, void* (Class::*function)(void*) , void* userdataP , bool swapped, bool returns) {
	return new UClassCallback<Class>(object, (void* (*)(void*, void*)) (function), userdataP, swapped, returns);
}

template <typename Class>
UCallback* make_new_UClassCallback(Class* object, void (Class::*function)(void*, void*) , void* userdataP , bool swapped, bool returns) {
	return new UClassCallback<Class>(object, (void* (*)(void*, void*)) (function), userdataP, swapped, returns);
}

template <typename Class>
UCallback* make_new_UClassCallback(Class* object, void (Class::*function)(void*) , void* userdataP , bool swapped, bool returns) {
	return new UClassCallback<Class>(object, (void* (*)(void*, void*)) (function), userdataP, swapped, returns);
}

#endif /* UCALLBACK_H_ */
