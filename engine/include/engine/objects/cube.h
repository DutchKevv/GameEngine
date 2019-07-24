#include "../renderObject.h"

class Cube : public RenderObject {
public:
    Cube();

    void init();

    void update(float delta);

    void draw(float delta);

    void destroy();
};