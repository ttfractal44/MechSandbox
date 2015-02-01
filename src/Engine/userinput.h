/*
 * userinput.h
 *
 *  Created on: Dec 16, 2014
 *      Author: theron
 */

#ifndef USERINPUT_H_
#define USERINPUT_H_

#include <SDL2/SDL.h>

namespace Engine {

void getUserEvents();

void inputLoop();

void startInputLoopThread();


}

#endif /* USERINPUT_H_ */
