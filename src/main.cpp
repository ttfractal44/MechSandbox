/*
 * main.cpp
 *
 *  Created on: Feb 27, 2015
 *      Author: theron
 */




#include "Client/Client.h"



int main() {
	Client::Client* client = new Client::Client();
	client->initializeGraphics();
	client->main();
	printf("Main exited\n");
	return 0;
}
