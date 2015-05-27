/*
 * UPointer.h
 *
 *  Created on: May 25, 2015
 *      Author: theron
 */

#ifndef UPOINTER_H_
#define UPOINTER_H_

/*template <typename type>
struct UPointer {
	UPointerInternal<type>* internal;
	inline bool valid() {
		return (bool)(internal->pointer);
	}
	inline type* use() {
		return internal->pointer;
	}
	inline void nullify() {
		internal->pointer = NULL;
	}
};


template <typename type>
struct UPointerInternal {
	type* pointer;
};

template <typename type>
UPointer* make_upointer(type* instance) {

}*/




template <typename type>
struct UPointer {
	type* ptr = NULL;
	type* operator->() const { return ptr; }
	UPointer& operator = (type* newptr) {
		ptr = newptr;
		return *this;
	}
	operator type*() const {
		return ptr;
	}
	template <typename casttype>
	operator casttype*() const {
		return (casttype*)ptr;
	}
};




#endif /* UPOINTER_H_ */
