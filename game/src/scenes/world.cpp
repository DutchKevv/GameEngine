#pragma once

#include <engine/scene.h>
#include <engine/model.h>
#include <engine/context.h>
#include <engine/resourceManager.h>
#include <engine/skybox.h>
#include <engine/objects/cube.h>
#include "../objects/floor.h"
#include "../objects/player.h"
// #include "../objects/test.h"

using namespace glm;

static vec3 cubePositions[] = {
    vec3(0.0f, 0.0f, 0.0f),
    vec3(2.0f, 5.0f, -15.0f),
    vec3(-1.5f, -2.2f, -2.5f),
    vec3(-3.8f, -2.0f, -12.3f),
    vec3(2.4f, -0.4f, -3.5f),
    vec3(-1.7f, 3.0f, -7.5f),
    vec3(1.3f, -2.0f, -2.5f),
    vec3(1.5f, 2.0f, -2.5f),
    vec3(1.5f, 0.2f, -1.5f),
    vec3(-1.3f, 1.0f, -1.5f)};

vector<glm::vec4> treePositions;
vector<glm::vec4> rockPositions;

Model *rockModel;
Model *planeModel;
Model *blenderModel;
Model *boulderModel;
Model *treeModel;
Model *cubeModel;

Shader shader;
Shader simpleDepthShader;
Shader debugDepthQuad;

const unsigned int SHADOW_WIDTH = 2048, SHADOW_HEIGHT = 2048;
unsigned int depthMap;
unsigned int depthMapFBO;

SkyBox *skybox;

// lighting info
// -------------
glm::vec3 lightPos(-2.0f, 4.0f, -1.0f);

const unsigned int space = 30;
const unsigned int trees = 50;
const unsigned int rocks = 100;

class WorldScene : public Scene
{

    void init()
    {

        shader = ResourceManager::LoadShader("build/game-assets/shaders/shadow_mapping.vs", "build/game-assets/shaders/shadow_mapping.fs", nullptr, "shadowMapping");
        simpleDepthShader = ResourceManager::LoadShader("build/game-assets/shaders/shadow_mapping_depth.vs", "build/game-assets/shaders/shadow_mapping_depth.fs", nullptr, "shadowDepth");
        debugDepthQuad = ResourceManager::LoadShader("build/game-assets/shaders/debug_quad.vs", "build/game-assets/shaders/debug_quad.fs", nullptr, "quadDepth");

        ResourceManager::LoadTexture("build/engine-assets/textures/grass.jpg", false, "grass");
        ResourceManager::LoadTexture("build/engine-assets/textures/container.jpg", false, "container-side");

        // attach camera
        this->camera = context->camera = new Camera();

        // create world objects
        this->createEnvironment();

        // attach player
        Player *player = new Player();
        this->addChild(player);

        // let the camera follow the player
        // this->camera->followObject(player);

        // create skybox
        skybox = new SkyBox();
        skybox->init();
        // this->addChild(skybox);
        // ------------------------------------------------------------------

        // configure depth map FBO
        // -----------------------

        glGenFramebuffers(1, &depthMapFBO);

        // create depth texture
        glGenTextures(1, &depthMap);
        glBindTexture(GL_TEXTURE_2D, depthMap);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT, SHADOW_WIDTH, SHADOW_HEIGHT, 0, GL_DEPTH_COMPONENT, GL_FLOAT, NULL);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);
        float borderColor[] = {1.0, 1.0, 1.0, 1.0};
        glTexParameterfv(GL_TEXTURE_2D, GL_TEXTURE_BORDER_COLOR, borderColor);
        // attach depth texture as FBO's depth buffer
        glBindFramebuffer(GL_FRAMEBUFFER, depthMapFBO);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D, depthMap, 0);
        glDrawBuffer(GL_NONE);
        glReadBuffer(GL_NONE);
        glBindFramebuffer(GL_FRAMEBUFFER, 0);

        // shader configuration
        // --------------------
        shader.Use();
        shader.SetInteger("diffuseTexture", 0);
        shader.SetInteger("shadowMap", 1);
        debugDepthQuad.Use();
        debugDepthQuad.SetInteger("depthMap", 0);

        consoleLog("world initialized");
    }

    void update(float delta)
    {
        Scene::update(delta);
    }

    void draw(float delta)
    {
        // return;
        
        // Scene::draw(delta);

        // consoleLog(this->player->position.x);

        // change light position over time
        lightPos.x = sin(glfwGetTime()) * 5.0f;
        lightPos.z = cos(glfwGetTime()) * 5.0f;
        lightPos.y = 2.0 + cos(glfwGetTime()) * 1.0f;

        Texture2D texture = ResourceManager::GetTexture("container-side");
        Texture2D textureGrass = ResourceManager::GetTexture("grass");

        // glActiveTexture(GL_TEXTURE0);
        // shader.SetInteger("texture_diffuse", 0);

        // 1. render depth of scene to texture (from light's perspective)
        // --------------------------------------------------------------
        glm::mat4 lightProjection, lightView;
        glm::mat4 lightSpaceMatrix;
        float near_plane = 1.0f, far_plane = 7.5f;
        //lightProjection = glm::perspective(glm::radians(45.0f), (GLfloat)SHADOW_WIDTH / (GLfloat)SHADOW_HEIGHT, near_plane, far_plane); // note that if you use a perspective projection matrix you'll have to change the light position as the current light position isn't enough to reflect the whole scene
        lightProjection = glm::ortho(-10.0f, 10.0f, -10.0f, 10.0f, near_plane, far_plane);
        lightView = glm::lookAt(lightPos, glm::vec3(0.0f), glm::vec3(0.0, 1.0, 0.0));
        lightSpaceMatrix = lightProjection * lightView;
        // render scene from light's point of view
        simpleDepthShader.Use();
        simpleDepthShader.SetMatrix4("lightSpaceMatrix", lightSpaceMatrix);

        glViewport(0, 0, SHADOW_WIDTH, SHADOW_HEIGHT);
        glBindFramebuffer(GL_FRAMEBUFFER, depthMapFBO);
        glClear(GL_DEPTH_BUFFER_BIT);
        glActiveTexture(GL_TEXTURE0);

        textureGrass.Bind();
        renderScene(delta, simpleDepthShader, true);

        glBindFramebuffer(GL_FRAMEBUFFER, 0);

        // reset viewport
        glViewport(0, 0, context->windowW, context->windowH);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // 2. render scene as normal using the generated depth/shadow map
        // --------------------------------------------------------------
        Camera *camera = context->camera;

        glViewport(0, 0, context->windowW, context->windowH);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        shader.Use();
        glm::mat4 projection = glm::perspective(glm::radians(camera->Zoom), (float)context->windowW / (float)context->windowH, 0.1f, 100.0f);
        glm::mat4 view = camera->GetViewMatrix();
        shader.SetMatrix4("projection", projection);
        shader.SetMatrix4("view", view);
        // set light uniforms
        shader.SetVector3f("viewPos", camera->Position);
        shader.SetVector3f("lightPos", lightPos);
        shader.SetMatrix4("lightSpaceMatrix", lightSpaceMatrix);
        glActiveTexture(GL_TEXTURE0);
        texture.Bind();
        glActiveTexture(GL_TEXTURE1);
        glBindTexture(GL_TEXTURE_2D, depthMap);
        renderScene(delta, shader, false);

        // render Depth map to quad for visual debugging
        // ---------------------------------------------
        debugDepthQuad.Use();
        debugDepthQuad.SetFloat("near_plane", near_plane);
        debugDepthQuad.SetFloat("far_plane", far_plane);
        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D, depthMap);

        skybox->draw(delta);
    }

    // renders the 3D scene
    // --------------------
    void renderScene(float delta, Shader &shader, bool isShadowRender = false)
    {
        Scene::renderScene(delta, shader, isShadowRender);

        // trees
        for (unsigned int i = 0; i < trees; i++)
        {
            glm::mat4 model;
            glm::vec4 random = treePositions[i];

            model = glm::translate(model, glm::vec3(random.x, -0.2f, random.z));
            model = glm::scale(model, glm::vec3(0.2f));
            // model = glm::scale(model, glm::vec3(random.w / 100));

            shader.SetMatrix4("model", model);

            treeModel->Draw(shader);
        }

        // rocks
        for (unsigned int i = 0; i < rocks; i++)
        {
            glm::mat4 model;
            glm::vec4 random = rockPositions[i];

            model = glm::translate(model, glm::vec3(random.x, -0.6f, random.z));
            model = glm::rotate(model, random.z, glm::vec3(random.x, random.y, random.z));
            model = glm::scale(model, glm::vec3(0.1f));

            shader.SetMatrix4("model", model);

            boulderModel->draw(delta, shader);
        }
    }

    void createEnvironment()
    {
        // load models
        // -----------------------
        rockModel = new Model("build/game-assets/models/rock/rock1.obj");
        // rockModel = new Model("build/game-assets/models/rock1/Rock1.obj");
        boulderModel = new Model("build/game-assets/models/boulder/newboulder.obj");
        // blenderModel = new Model("build/game-assets/models/blenderman/BLENDERMAN!.obj");
        treeModel = new Model("build/game-assets/models/tree/cube.obj");
        // treeModel = new Model("build/game-assets/models/tree2/Tree1.obj");
        // treeModel = new Model("build/game-assets/models/tree/trees.obj");
        // treeModel = new Model("build/game-assets/models/tree2/Hazelnut.obj");
        // treeModel = new Model("build/game-assets/models/tree-lp2/trees-lo-poly.obj");
        // treeModel = new Model("build/game-assets/models/tree-low-poly/lowtree.obj");
        // cubeModel = new Model("build/game-assets/models/cube/cube.obj");

        // load random positions for models
        float halfSpace = space / 2;
        for (int i = 0; i < trees; i++)
        {
            treePositions.push_back(
                glm::vec4((rand() % space) - halfSpace, 0.0f, (rand() % space) - halfSpace, rand() % 100));
        }

        for (int i = 0; i < rocks; i++)
        {
            rockPositions.push_back(
                glm::vec4((rand() % space) - halfSpace, 0.0f, (rand() % space) - halfSpace, rand() % 100));
        }

        // add floor (TEMP)
        this->addChild(new Floor());
    }
};