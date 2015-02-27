/*
 * rendering.cpp
 *
 *  Created on: Feb 2, 2015
 *      Author: theron
 */

#include "rendering.h"

namespace Client {

int frame=0;
int lastTime = 0;
int lastFrame = 0;
float currentFPS;

void initRendering() {

	SDL_Init(SDL_INIT_EVERYTHING);

	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_COMPATIBILITY );
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);

	//const char windowtitle[] = strings::windowTitle.c_str();

	sdlWindow = SDL_CreateWindow(strings::windowTitle.c_str(), SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 1066,600,SDL_WINDOW_OPENGL|SDL_WINDOW_RESIZABLE);
	sdlglContext = SDL_GL_CreateContext(sdlWindow);
	//SDL_Surface* screen = SDL_GetWindowSurface(sdlWindow);

	//glewExperimental = GL_TRUE;
	//glewInit();

	//SDL_GL_SetSwapInterval(1);

	printf("GL Vendor: %s\n",glGetString(GL_VENDOR));
	printf("GL Renderer: %s\n",glGetString(GL_RENDERER));
	printf("GL Version: %s\n",glGetString(GL_VERSION));
	printf("GL Shader Version: %s\n",glGetString(GL_SHADING_LANGUAGE_VERSION));

	//glEnable(GL_DEPTH_TEST);

	//interfaceShaderProgram = compileShader("interface/vertex.glsl","interface/fragment.glsl");

	/*glGenVertexArrays(1, &interfaceVertexArrayId);
	glBindVertexArray(interfaceVertexArrayId);

	glGenBuffers(1, &interfaceVertexBufferId);
	glBindBuffer(GL_ARRAY_BUFFER, interfaceVertexBufferId);

	glGenTextures(1, &interfaceTexture);
	glBindTexture(GL_TEXTURE_2D, interfaceTexture);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

	GLint vertexPositionAttrib = glGetAttribLocation(interfaceShaderProgram, "position");
	glEnableVertexAttribArray(vertexPositionAttrib);
	glVertexAttribPointer(vertexPositionAttrib, 3, GL_FLOAT, GL_FALSE, 2*sizeof(GLfloat), 0);

	float verts[] = {
		    -1, -1,  1, -1, -1,  1,
		     1,  1, -1,  1,  1, -1
		};
	glBufferData(GL_ARRAY_BUFFER, 12*sizeof(GLfloat), &verts, GL_STATIC_DRAW);*/

	osg_viewer = new osgViewer::Viewer();

	osg_viewer->setThreadingModel(osgViewer::ViewerBase::SingleThreaded);

	//sceneCamera = new osg::Camera;
	sceneCamera = osg_viewer->getCamera();
	sceneCamera->setClearColor(osg::Vec4(0, 0, 0, 1));

	//osg_viewer->setCameraManipulator(new osgGA::TrackballManipulator());
	osg_viewer->addEventHandler(new osgViewer::StatsHandler);
	//sceneCamera->setViewMatrixAsLookAt(osg::Vec3f(0,16,0),osg::Vec3f(0,0,0),osg::Vec3f(0,0,1));
	//sceneCamera->setProjectionMatrixAsPerspective(90,1066./600.,0.1,100);
	//sceneCamera->setViewport(0,0,1066,600);

	//osg_viewer->setCamera(sceneCamera);

	osg_graphicsWindow = osg_viewer->setUpViewerAsEmbeddedInWindow(0,0,1066,600);

	//osg_viewer->getCamera()->setAllowEventFocus(false);

	if (!sceneRoot) {
		sceneRoot = new osg::Group();
	}
	osg_viewer->setSceneData(sceneRoot);

	//sceneCamera = osg_viewer->getCamera();

	interfaceCamera = new osg::Camera();
	interfaceCamera->setClearMask( GL_DEPTH_BUFFER_BIT );
	interfaceCamera->setRenderOrder( osg::Camera::POST_RENDER );
	interfaceCamera->setReferenceFrame( osg::Camera::ABSOLUTE_RF );
	/*interfaceCamera->setViewMatrixAsLookAt(
	osg::Vec3(0.0f,-5.0f,5.0f), osg::Vec3(),
	osg::Vec3(0.0f,1.0f,1.0f)
	);*/
	interfaceGeode = new osg::Geode();
	interfaceGeometry = new osg::Geometry();
	interfaceGeode->addDrawable(interfaceGeometry);
	interfaceCamera->addChild(interfaceGeode);

	osg::Vec3Array* interfaceVertices = new osg::Vec3Array;
	interfaceVertices->push_back( osg::Vec3( -1, -1, 0) ); // front left
	interfaceVertices->push_back( osg::Vec3(  1, -1, 0) ); // front right
	interfaceVertices->push_back( osg::Vec3(  1,  1, 0) ); // back right
	interfaceVertices->push_back( osg::Vec3( -1,  1, 0) ); // back left
	interfaceGeometry->setVertexArray( interfaceVertices );

	osg::DrawElementsUInt* interfaceInstRect = new osg::DrawElementsUInt(osg::PrimitiveSet::QUADS, 0);
	interfaceInstRect->push_back(0);
	interfaceInstRect->push_back(1);
	interfaceInstRect->push_back(2);
	interfaceInstRect->push_back(3);
	interfaceGeometry->addPrimitiveSet(interfaceInstRect);

	float interfaceAlpha = 0.5f;

	osg::Vec4Array* colors = new osg::Vec4Array;
	colors->push_back(osg::Vec4(1.0f, 1.0f, 1.0f, interfaceAlpha));
	colors->push_back(osg::Vec4(1.0f, 1.0f, 1.0f, interfaceAlpha));
	colors->push_back(osg::Vec4(1.0f, 1.0f, 1.0f, interfaceAlpha));
	colors->push_back(osg::Vec4(1.0f, 1.0f, 1.0f, interfaceAlpha));
	interfaceGeometry->setColorArray(colors);

	interfaceGeometry->setColorBinding(osg::Geometry::BIND_PER_VERTEX);

	osg::Vec2Array* texcoords = new osg::Vec2Array(4);
	(*texcoords)[0].set(0.0f,1.0f);
	(*texcoords)[1].set(1.0f,1.0f);
	(*texcoords)[2].set(1.0f,0.0f);
	(*texcoords)[3].set(0.0f,0.0f);
	interfaceGeometry->setTexCoordArray(0,texcoords);

	interfaceTexture = new osg::Texture2D;
	interfaceTexture->setDataVariance(osg::Object::DYNAMIC);
	interfaceTexture->setResizeNonPowerOfTwoHint(false);
	//osg::Image* interfaceImage = osgDB::readImageFile("resources/test.png");
	//osg::Image* interfaceImage = new osg::Image();
	interfaceImage = new osg::Image();
	interfaceTexture->setImage(interfaceImage);
	osg::StateSet* interfaceState = new osg::StateSet();
	interfaceState->setTextureAttributeAndModes(0, interfaceTexture, osg::StateAttribute::ON);
	interfaceState->setMode(GL_BLEND, osg::StateAttribute::ON);
	interfaceGeode->setStateSet(interfaceState);
	interfaceCamera->getOrCreateStateSet()->setMode(GL_LIGHTING, osg::StateAttribute::OFF );

	sceneRoot->addChild(interfaceCamera);

	osg_viewer->realize();

	camera = new Camera;

	sceneCamera->setProjectionMatrixAsPerspective(90,1066./600.,0.1,100);

	printf("Graphics Initialized\n");

}

GLuint compileShader(std::string vertexShaderPath, std::string fragmentShaderPath) {
	std::string vertexShaderSourceStr = readResource("shaders/"+vertexShaderPath).c_str();
	std::string fragmentShaderSourceStr = readResource("shaders/"+fragmentShaderPath).c_str();

	const GLchar* vertexShaderSource = vertexShaderSourceStr.c_str();
	const GLchar* fragmentShaderSource = fragmentShaderSourceStr.c_str();

	bool error=false;

	GLint vertexShaderStatus;
	GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
	glCompileShader(vertexShader);
	glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &vertexShaderStatus);
	if (vertexShaderStatus!=GL_TRUE) {
		printf("Vertex shader error!\n");
		char buffer[512];
		glGetShaderInfoLog(vertexShader, 512, NULL, buffer);
		printf("%s\n",buffer);
		//printf("Vertex shader source:\n%s\n",vertexShaderSource);
		error=true;
	}

	GLint fragmentShaderStatus;
	GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
	glCompileShader(fragmentShader);
	glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &fragmentShaderStatus);
	if (fragmentShaderStatus!=GL_TRUE) {
		printf("Fragment shader error!\n");
		char buffer[512];
		glGetShaderInfoLog(fragmentShader, 512, NULL, buffer);
		printf("%s\n",buffer);
		//printf("Fragment shader source:\n%s\n",fragmentShaderSource);
		error=true;
	}
	if (!error) {
		GLuint shaderProgram = glCreateProgram();
		glAttachShader(shaderProgram, vertexShader);
		glAttachShader(shaderProgram, fragmentShader);

		glBindFragDataLocation(shaderProgram, 0, "outColor");

		glLinkProgram(shaderProgram);

		return shaderProgram;
	} else {
		return 0;
	}
}

void render() {

	/*osg::Camera* camera = osg_viewer->getCamera();

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	osg_sceneviewer->setViewMatrix(camera->getViewMatrix());
	osg_sceneviewer->setProjectionMatrix(camera->getProjectionMatrix());
	osg_sceneviewer->setViewport(0,0, 1066, 600);
	osg_sceneviewer->update();
	osg_sceneviewer->cull();
	osg_sceneviewer->draw();*/

	osg_viewer->frame();

	//osg_viewer->eventTraversal();
	//osg_viewer->updateTraversal();
	//osg_viewer->renderingTraversals();

	//osg::GraphicsOperation* go = camera->getRenderer();
	//osg::GraphicsContext* context = camera->getGraphicsContext();
	//(*go)(context);
	//osg_viewer->renderingTraversals2();

	//osg_viewer->drawAllContexts();
	//osg_viewer->makeCurrent_(context);
	//context->runOperations();
	//context->swapBuffers();

	/*glBindVertexArray(interfaceVertexArrayId);
	glUseProgram(interfaceShaderProgram);
	glBindBuffer(GL_ARRAY_BUFFER, interfaceVertexBufferId);
	glBindTexture(GL_TEXTURE_2D, interfaceTexture);

	glDrawArrays(GL_TRIANGLES, 0, 12);*/

	//osg_viewer->swapAllContexts();

	//renderer->draw();

	frame+=1;

	if (frame%updateFPSInterval==0) {
		int time = SDL_GetTicks();
		currentFPS = (float)(frame-lastFrame)/(time-lastTime)*1000;
		if (printFPS) {
			printf("%f FPS\n",currentFPS);
		}
		lastTime = time;
		lastFrame = frame;
	}

	SDL_GL_SwapWindow(sdlWindow);
}

} /* namespace Client */
