#include "../../shader.h"
#include "../../renderObject.h"

class Button : public RenderObject {
public:
    Button();

    void init();

    void update(float delta);

    // void draw(float delta);

    void renderScene(float delta, Shader &shader, bool isShadowRender);

    void destroy();
};