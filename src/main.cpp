



#include "Model/Drawing/Drawing.h"
#include "Model/Drawing/Point.h"
#include "Model/Drawing/Line.h"
#include "Model/Drawing/Circle.h"
#include "Model/Drawing/Union.h"
#include "Model/Drawing/CopySequence.h"
#include "Client/Client.h"

Client::Client* client;
Client::GraphicsWindow* graphics;
osg::Camera* camera;
Model::Drawing::Drawing* drawing1;
Model::Drawing::Element* union1;
Model::Drawing::Union* union2;

int main() {
	client = new Client::Client();
	client->initializeGraphics();
	graphics = client->newGraphicsWindow("Graphics", 800, 600);
	drawing1 = new Model::Drawing::Drawing();

	/*union1 = drawing1->addElement(new Model::Drawing::Union());

	graphics->setSceneData(union1->osgnode);

	for (float y=-2; y<2; y+=0.2) {
		for (float x=-2; x<2; x+=0.2) {
			drawing1->addElement(new Model::Drawing::Line(osg::Vec2(x,y),osg::Vec2(x+0.1,y)));
			drawing1->addElement(new Model::Drawing::Line(osg::Vec2(x,y),osg::Vec2(x,y+0.1)));
			((Model::Drawing::Union*)union1)->addElement(drawing1->addElement(new Model::Drawing::Circle(osg::Vec2(x,y),0.18)));
		}
	}*/

	union2 = new Model::Drawing::Union();

	drawing1->addElement(union2);

	Model::Drawing::Element* circle1 = drawing1->addElement(new Model::Drawing::Circle(osg::Vec2(0,0),0.1));

	union2->addElement(circle1);

	Model::Drawing::CopySequence* sequence1 = (Model::Drawing::CopySequence*)drawing1->addElement(new Model::Drawing::CopySequence(union2));

	printf("Setting properties\n");
	sequence1->setTransformationProperties(50, osg::Vec2(0.5,0),M_PI/3,osg::Vec2(0,0));

	//union2->addElement(union2);

	graphics->setSceneData(sequence1->osgnode);

	drawing1->update(100,100);

	sequence1->setTransformationProperties(5, osg::Vec2(0.5,0),M_PI/3,osg::Vec2(0,0));

	drawing1->update(100,100);

	camera = graphics->getCamera();

	camera->setViewMatrixAsLookAt(osg::Vec3(0,0,10),osg::Vec3(0,0,0),osg::Vec3(0,1,0));


	client->main();
	printf("Main exited\n");
	return 0;
}
