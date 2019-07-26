//
// Created by Kewin Brandsma on 04/08/2017.
//

#include "logger.h"
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