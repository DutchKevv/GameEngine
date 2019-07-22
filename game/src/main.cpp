#include <engine/engine.h>
#include "scenes/menu.cpp"
#include "scenes/world.cpp"

int main(void)
{
    Engine *game = new Engine(0);

    // init with options
    game->init();

    // create window
    game->renderer->createWindow();

    // add main menu
    MenuScene *menuScene = new MenuScene();
    game->renderer->addChild(menuScene);

    // add world
    // TODO - load async (after user presses 'start' in game)
    WorldScene *worldScene = new WorldScene();
    game->renderer->addChild(worldScene);

    // start main loop
    game->start();

    // exit program
    // exit(EXIT_?SUCCESS);
}