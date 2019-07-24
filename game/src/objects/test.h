#pragma once

#include <engine/renderObject.h>

class TestObject : public RenderObject {
public:
    TestObject();

    void init();

    void update(float delta);

    void draw(float delta);

    void destroy();
private:
};