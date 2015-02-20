/*
 * CustomViewer.cpp
 *
 *  Created on: Feb 13, 2015
 *      Author: theron
 */

#include "CustomViewer.h"

namespace Client {

void CustomViewer::makeCurrent_(osg::GraphicsContext *gc) {
	makeCurrent(gc);
}

void CustomViewer::drawAllContexts() {
    Contexts contexts;
    getContexts(contexts);

    Contexts::iterator itr;

    for(itr = contexts.begin();
        itr != contexts.end() && !_done;
        ++itr)
    {
        if (!((*itr)->getGraphicsThread()) && (*itr)->valid())
        {
            //doneMakeCurrentInThisThread = true;
            makeCurrent(*itr);
            (*itr)->runOperations();
        }
    }
}

void CustomViewer::swapAllContexts() {
    Contexts contexts;
    getContexts(contexts);

    Contexts::iterator itr;

    for(itr = contexts.begin();
        itr != contexts.end() && !_done;
        ++itr)
    {
        if (!((*itr)->getGraphicsThread()) && (*itr)->valid())
        {
            //doneMakeCurrentInThisThread = true;
            makeCurrent(*itr);
            (*itr)->swapBuffers();
        }
    }
}



void CustomViewer::renderingTraversals2() {

    Contexts contexts;
    getContexts(contexts);

    Contexts::iterator itr;

    for(itr = contexts.begin();
        itr != contexts.end() && !_done;
        ++itr)
    {
        if (!((*itr)->getGraphicsThread()) && (*itr)->valid())
        {
            //doneMakeCurrentInThisThread = true;
            makeCurrent(*itr);
            (*itr)->runOperations();
        }
    }

    for(itr = contexts.begin();
        itr != contexts.end() && !_done;
        ++itr)
    {
        if (!((*itr)->getGraphicsThread()) && (*itr)->valid())
        {
            //doneMakeCurrentInThisThread = true;
            makeCurrent(*itr);
            (*itr)->swapBuffers();
        }
    }
}

void CustomViewer::renderingTraversals()
{
    bool _outputMasterCameraLocation = false;
    if (_outputMasterCameraLocation)
    {
        Views views;
        getViews(views);

        for(Views::iterator itr = views.begin();
            itr != views.end();
            ++itr)
        {
            osgViewer::View* view = *itr;
            if (view)
            {
                const osg::Matrixd& m = view->getCamera()->getInverseViewMatrix();
                OSG_NOTICE<<"View "<<view<<", Master Camera position("<<m.getTrans()<<"), rotation("<<m.getRotate()<<")"<<std::endl;
            }
        }
    }

    Contexts contexts;
    getContexts(contexts);

    // check to see if windows are still valid
    checkWindowStatus(contexts);
    if (_done) return;

    double beginRenderingTraversals = elapsedTime();

    osg::FrameStamp* frameStamp = getViewerFrameStamp();

    if (getViewerStats() && getViewerStats()->collectStats("scene"))
    {
        unsigned int frameNumber = frameStamp ? frameStamp->getFrameNumber() : 0;

        Views views;
        getViews(views);
        for(Views::iterator vitr = views.begin();
            vitr != views.end();
            ++vitr)
        {
            osgViewer::View* view = *vitr;
            osg::Stats* stats = view->getStats();
            osg::Node* sceneRoot = view->getSceneData();
            if (sceneRoot && stats)
            {
                osgUtil::StatsVisitor statsVisitor;
                sceneRoot->accept(statsVisitor);
                statsVisitor.totalUpStats();

                unsigned int unique_primitives = 0;
                osgUtil::Statistics::PrimitiveCountMap::iterator pcmitr;
                for(pcmitr = statsVisitor._uniqueStats.GetPrimitivesBegin();
                    pcmitr != statsVisitor._uniqueStats.GetPrimitivesEnd();
                    ++pcmitr)
                {
                    unique_primitives += pcmitr->second;
                }

                stats->setAttribute(frameNumber, "Number of unique StateSet", static_cast<double>(statsVisitor._statesetSet.size()));
                stats->setAttribute(frameNumber, "Number of unique Group", static_cast<double>(statsVisitor._groupSet.size()));
                stats->setAttribute(frameNumber, "Number of unique Transform", static_cast<double>(statsVisitor._transformSet.size()));
                stats->setAttribute(frameNumber, "Number of unique LOD", static_cast<double>(statsVisitor._lodSet.size()));
                stats->setAttribute(frameNumber, "Number of unique Switch", static_cast<double>(statsVisitor._switchSet.size()));
                stats->setAttribute(frameNumber, "Number of unique Geode", static_cast<double>(statsVisitor._geodeSet.size()));
                stats->setAttribute(frameNumber, "Number of unique Drawable", static_cast<double>(statsVisitor._drawableSet.size()));
                stats->setAttribute(frameNumber, "Number of unique Geometry", static_cast<double>(statsVisitor._geometrySet.size()));
                stats->setAttribute(frameNumber, "Number of unique Vertices", static_cast<double>(statsVisitor._uniqueStats._vertexCount));
                stats->setAttribute(frameNumber, "Number of unique Primitives", static_cast<double>(unique_primitives));

                unsigned int instanced_primitives = 0;
                for(pcmitr = statsVisitor._instancedStats.GetPrimitivesBegin();
                    pcmitr != statsVisitor._instancedStats.GetPrimitivesEnd();
                    ++pcmitr)
                {
                    instanced_primitives += pcmitr->second;
                }

                stats->setAttribute(frameNumber, "Number of instanced Stateset", static_cast<double>(statsVisitor._numInstancedStateSet));
                stats->setAttribute(frameNumber, "Number of instanced Group", static_cast<double>(statsVisitor._numInstancedGroup));
                stats->setAttribute(frameNumber, "Number of instanced Transform", static_cast<double>(statsVisitor._numInstancedTransform));
                stats->setAttribute(frameNumber, "Number of instanced LOD", static_cast<double>(statsVisitor._numInstancedLOD));
                stats->setAttribute(frameNumber, "Number of instanced Switch", static_cast<double>(statsVisitor._numInstancedSwitch));
                stats->setAttribute(frameNumber, "Number of instanced Geode", static_cast<double>(statsVisitor._numInstancedGeode));
                stats->setAttribute(frameNumber, "Number of instanced Drawable", static_cast<double>(statsVisitor._numInstancedDrawable));
                stats->setAttribute(frameNumber, "Number of instanced Geometry", static_cast<double>(statsVisitor._numInstancedGeometry));
                stats->setAttribute(frameNumber, "Number of instanced Vertices", static_cast<double>(statsVisitor._instancedStats._vertexCount));
                stats->setAttribute(frameNumber, "Number of instanced Primitives", static_cast<double>(instanced_primitives));
           }
        }
    }

    Scenes scenes;
    getScenes(scenes);

    for(Scenes::iterator sitr = scenes.begin();
        sitr != scenes.end();
        ++sitr)
    {
    	osgViewer::Scene* scene = *sitr;
        osgDB::DatabasePager* dp = scene ? scene->getDatabasePager() : 0;
        if (dp) dp->signalBeginFrame(frameStamp);

        osgDB::ImagePager* ip = scene ? scene->getImagePager() : 0;
        if (ip) ip->signalBeginFrame(frameStamp);

        if (scene->getSceneData())
        {
            // fire off a build of the bounding volumes while we
            // are still running single threaded.
            scene->getSceneData()->getBound();
        }
    }

    // OSG_NOTICE<<std::endl<<"Start frame"<<std::endl;


    Cameras cameras;
    getCameras(cameras);

    Contexts::iterator itr;

    bool doneMakeCurrentInThisThread = false;

    if (_endDynamicDrawBlock.valid())
    {
        _endDynamicDrawBlock->reset();
    }

    // dispatch the rendering threads
    if (_startRenderingBarrier.valid()) _startRenderingBarrier->block();

    // reset any double buffer graphics objects
    for(Cameras::iterator camItr = cameras.begin();
        camItr != cameras.end();
        ++camItr)
    {
        osg::Camera* camera = *camItr;
        osgViewer::Renderer* renderer = dynamic_cast<osgViewer::Renderer*>(camera->getRenderer());
        if (renderer)
        {
            if (!renderer->getGraphicsThreadDoesCull() && !(camera->getCameraThread()))
            {
                renderer->cull();
            }
        }
    }

    for(itr = contexts.begin();
        itr != contexts.end() && !_done;
        ++itr)
    {
        if (!((*itr)->getGraphicsThread()) && (*itr)->valid())
        {
            doneMakeCurrentInThisThread = true;
            makeCurrent(*itr);
            (*itr)->runOperations();
        }
    }

    // OSG_NOTICE<<"Joing _endRenderingDispatchBarrier block "<<_endRenderingDispatchBarrier.get()<<std::endl;

    // wait till the rendering dispatch is done.
    if (_endRenderingDispatchBarrier.valid()) _endRenderingDispatchBarrier->block();

    for(itr = contexts.begin();
        itr != contexts.end() && !_done;
        ++itr)
    {
        if (!((*itr)->getGraphicsThread()) && (*itr)->valid())
        {
            doneMakeCurrentInThisThread = true;
            makeCurrent(*itr);
            (*itr)->swapBuffers();
        }
    }

    for(Scenes::iterator sitr = scenes.begin();
        sitr != scenes.end();
        ++sitr)
    {
    	osgViewer::Scene* scene = *sitr;
        osgDB::DatabasePager* dp = scene ? scene->getDatabasePager() : 0;
        if (dp) dp->signalEndFrame();

        osgDB::ImagePager* ip = scene ? scene->getImagePager() : 0;
        if (ip) ip->signalEndFrame();
    }

    // wait till the dynamic draw is complete.
    if (_endDynamicDrawBlock.valid())
    {
        // osg::Timer_t startTick = osg::Timer::instance()->tick();
        _endDynamicDrawBlock->block();
        // OSG_NOTICE<<"Time waiting "<<osg::Timer::instance()->delta_m(startTick, osg::Timer::instance()->tick())<<std::endl;;
    }

    if (_releaseContextAtEndOfFrameHint && doneMakeCurrentInThisThread)
    {
        //OSG_NOTICE<<"Doing release context"<<std::endl;
        releaseContext();
    }

    if (getViewerStats() && getViewerStats()->collectStats("update"))
    {
        double endRenderingTraversals = elapsedTime();

        // update current frames stats
        getViewerStats()->setAttribute(frameStamp->getFrameNumber(), "Rendering traversals begin time ", beginRenderingTraversals);
        getViewerStats()->setAttribute(frameStamp->getFrameNumber(), "Rendering traversals end time ", endRenderingTraversals);
        getViewerStats()->setAttribute(frameStamp->getFrameNumber(), "Rendering traversals time taken", endRenderingTraversals-beginRenderingTraversals);
    }

    _requestRedraw = false;
}

} /* namespace Client */
