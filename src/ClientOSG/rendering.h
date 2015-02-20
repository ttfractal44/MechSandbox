/*
 * rendering.h
 *
 *  Created on: Feb 4, 2015
 *      Author: theron
 */

#ifndef RENDERING_H_
#define RENDERING_H_

#include "Client.h"

namespace Client {


void initRendering();
GLuint compileShader(std::string vertexShaderPath, std::string fragmentShaderPath);
void render();


} /* namespace Client */

#endif /* RENDERING_H_ */
