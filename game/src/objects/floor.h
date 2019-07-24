
#pragma once

#include <engine/renderObject.h>

class Floor : public RenderObject {
public:
    Floor();

    void init();

    void update(float delta);

    void draw(float delta);

    int renderScene(Shader &shader, bool isShadowRender);

    void destroy();
private:
};