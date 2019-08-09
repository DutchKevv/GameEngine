#include <engine/engine.h>
#include <engine/opengl_headers.h>
#include <engine/context.h>
#include "scenes/menu.cpp"
#include "scenes/world.cpp"

#include "../CommonInterfaces/CommonExampleInterface.h"
#include "../CommonInterfaces/CommonGUIHelperInterface.h"
#include "BulletCollision/CollisionDispatch/btCollisionObject.h"
#include "BulletCollision/CollisionShapes/btCollisionShape.h"
#include "BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h"

#include "LinearMath/btTransform.h"
#include "LinearMath/btHashMap.h"

int main(int argc, char *argv[])
{

    // set engine options
    context->fullscreen = false;
    context->windowH = 800;
    context->windowW = 1024;

    // pass optional (terminal) arguments to engine (argv)
    Engine game(argv);

    // initialize
    game.init();

    // create window
    game.renderer->createWindow();

    // add main menu
    MenuScene *menuScene = new MenuScene();
    game.renderer->addChild(menuScene, "menu");

    // add world
    // TODO - load async (after user presses 'start' in game)
    WorldScene *worldScene = new WorldScene();
    game.renderer->addChild(worldScene, "world");

    // start main loop

    

    game.start();

    // delete example;

    // exit program
    // exit(EXIT_SUCCESS);
}