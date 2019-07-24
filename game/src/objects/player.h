
#pragma once

#include <engine/renderObject.h>
#include <engine/model.h>

class Player : public RenderObject
{
public:
    Player();

    Model *playerModel;

    const float minSpeed = -0.5f;
    const float maxSpeed = 1.0f;
    const float airborneThreshold = 0.1f;
    bool isAirborne = false;

    enum Camera_Movement
    {
        UP,
        DOWN,
        LEFT,
        RIGHT,
        A,
        W,
        S,
        D
    };

    float yM = 0.0f;

    void init();

    void update(float delta);

    void draw(float delta);

    int processKeyboard(Camera_Movement direction, float velocity);

    int renderScene(Shader &shader, bool isShadowRender);

    void destroy();

private:
};