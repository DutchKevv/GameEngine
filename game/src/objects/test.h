#pragma once

#include <engine/renderObject.h>

class TestObject : public RenderObject {
public:
    TestObject();

    void init();

    void update();

    void draw();

    int loadShaderProgram();

    int renderScene(Shader &shader, bool isShadowRender);

    void destroy();
private:
};