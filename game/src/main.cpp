#include <engine/engine.h>

int main(void)
{

    Engine *game = new Engine(0);

    game->init();
    game->renderer->createWindow();
    game->start();
    
    // exit(EXIT_SUCCESS);
}