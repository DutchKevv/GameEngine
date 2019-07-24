
#pragma once

#include <engine/renderObject.h>

class Floor : public RenderObject {
public:
    void init();

    void renderScene(float delta, Shader &shader, bool isShadowRender);

    void destroy();
private:
};