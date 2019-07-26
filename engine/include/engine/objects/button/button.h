#include "../renderObject.h"

class Button : public RenderObject {
public:
    Button();

    void init();

    void update(float delta);

    void draw(float delta);

    void destroy();
};