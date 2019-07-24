//
// Created by Kewin Brandsma on 04/08/2017.
//

#include "scene.h"
#include "context.h"

Scene::Scene() {

}

/**
 *
 * @param instance
 * @return
 */
int Scene::attachSkybox(RenderObject *instance) {
    instance->id = idCounter++;
    instance->init();
    this->skybox = instance;
    return 0;
}

/**
 *
 * @param instance
 * @return
 */
int Scene::attachHud(RenderObject *instance) {
    instance->id = idCounter++;
    instance->init();
    this->hud = instance;
    return 0;
}

/**
 *
 * @param instance
 * @return
 */
int Scene::attachPlayer(RenderObject *instance) {
    instance->id = idCounter++;
    instance->init();
    this->player = instance;
    this->attachRenderObj(instance);
    return 0;
}

/**
 * Add object to render list
 * @param renderObj
 * @return
 */
int Scene::attachRenderObj(RenderObject *renderObj) {
    // renderObj->id = idCounter++;
    // this->children.push_back(renderObj);
    // renderObj->init();
    return renderObj->id;
}

/**
 * Attach camera
 * @param camera
 * @return
 */
int Scene::attachCamera(Camera *camera) {
    context->camera = camera;
    return 0;
}


/**
 *
 * @param id
 * @param width
 * @param height
 * @return
 */
int Scene::renderSingleObj(int id, int width, int height) {
    RenderObject *renderObject = getRenderObjectById(id);

    if (!renderObject) {
        consoleLog("Error - RenderObject not found!");
        consoleLog(id);
        return -1;
    }

    context->renderer->resizeWindow(width, height);

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    Shader shader = ResourceManager::GetShader("chart");
//     renderObject->renderScene(shader, false);

//     glfwSwapBuffers(context->window);
// #ifdef __EMSCRIPTEN__
//     EM_ASM_({
//          window.Module.custom.updateClientCanvas($0);
//     }, renderObject->id);
// #endif
    return 0;
}

/**
 * Get RenderObject by id
 * @param id
 * @return
 */
RenderObject *Scene::getRenderObjectById(int id) {
    for (RenderObject *renderObject : this->children) {
        if (renderObject->id == id) {
            return renderObject;
        }
    }

    return NULL;
}

int Scene::toggleFocusedRenderObj(RenderObject *renderObj) {
    for (RenderObject *renderObject : this->children) {
        renderObject->focused = false;
    }

    renderObj->focused = true;
    return 0;
}

int Scene::initShadowMap() {
    // -----------------------



    return 0;
}