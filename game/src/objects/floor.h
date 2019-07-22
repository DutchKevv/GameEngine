
#pragma once

#include <engine/renderObject.h>

class Floor : public RenderObject {
public:
    Floor();

    void init();

    void update();

    void draw();

    int renderScene(Shader &shader, bool isShadowRender);

    void destroy();
private:
};