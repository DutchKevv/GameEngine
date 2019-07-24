#pragma once

#include "renderObject.h"
#include "camera.h"

class Scene : public RenderObject {
    unsigned int idCounter = 0;
public:
    Camera *camera;
    RenderObject *player;
    RenderObject *skybox;
    RenderObject *hud;

    Scene();

    int renderScene(Shader &shader, bool isShadowRender);

    int renderShadowScene(Shader &shader);

    int attachSkybox(RenderObject *instance);

    int attachHud(RenderObject *instance);

    int attachPlayer(RenderObject *instance);

    int attachRenderObj(RenderObject *renderObj);

    int attachCamera(Camera *camera);

    int renderSingleObj(int id, int width, int height);

    RenderObject *getRenderObjectById(int id);

    int initShadowMap();

    int toggleFocusedRenderObj(RenderObject *renderObj);
};
