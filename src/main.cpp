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
	Client::GraphicsWindow* graphics1 = client->newGraphicsWindow("graphics1", 800, 600);
	graphics1->newAttachedToolWindow("tool1")->show();
	graphics1->newAttachedToolWindow("tool2")->show();
	graphics1->newAttachedToolWindow("tool3")->show();
	client->main();
	printf("Main exited\n");
	return 0;
}
