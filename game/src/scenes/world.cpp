#pragma once

#include <engine/scene.h>
#include <engine/model.h>
#include <engine/context.h>
#include <engine/resourceManager.h>
#include <engine/skybox.h>
#include <engine/logger.h>
#include <engine/terrain.h>
#include <engine/objects/cube.h>
#include "../objects/floor.h"
#include "../objects/player.h"
// #include "../objects/test.h"

#include "btBulletDynamicsCommon.h"
#define ARRAY_SIZE_Y 5
#define ARRAY_SIZE_X 5
#define ARRAY_SIZE_Z 5

#include "LinearMath/btVector3.h"
#include "LinearMath/btAlignedObjectArray.h"

#include "../CommonInterfaces/CommonExampleInterface.h"
#include "../CommonInterfaces/CommonGUIHelperInterface.h"
#include "BulletCollision/CollisionDispatch/btCollisionObject.h"
#include "BulletCollision/CollisionShapes/btCollisionShape.h"
#include "BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h"

#include "LinearMath/btTransform.h"
#include "LinearMath/btHashMap.h"

using namespace glm;

CommonExampleInterface *example;

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

static Shader shader;
static Shader simpleDepthShader;
static Shader debugDepthQuad;

const unsigned int SHADOW_WIDTH = 2048, SHADOW_HEIGHT = 2048;
unsigned int depthMap;
unsigned int depthMapFBO;

// lighting info
// -------------
glm::vec3 lightPos(-2.0f, 4.0f, -1.0f);

const unsigned int space = 30;
const unsigned int trees = 5;
const unsigned int rocks = 100;

#include <engine/bodyBase.h>

struct BasicExample : public CommonRigidBodyBase
{
    BasicExample(struct GUIHelperInterface *helper)
        : CommonRigidBodyBase(helper)
    {
    }
    virtual ~BasicExample() {}
    virtual void initPhysics();
    virtual void renderScene();
    void resetCamera()
    {
        consoleLog("re");
        float dist = 4;
        float pitch = -35;
        float yaw = 52;
        float targetPos[3] = {0, 0, 0};
        m_guiHelper->resetCamera(dist, yaw, pitch, targetPos[0], targetPos[1], targetPos[2]);
    }
};

void BasicExample::initPhysics()
{
    m_guiHelper->setUpAxis(1);

    createEmptyDynamicsWorld();
    //m_dynamicsWorld->setGravity(btVector3(0,0,0));
    m_guiHelper->createPhysicsDebugDrawer(m_dynamicsWorld);

    if (m_dynamicsWorld->getDebugDrawer())
        m_dynamicsWorld->getDebugDrawer()->setDebugMode(btIDebugDraw::DBG_DrawWireframe + btIDebugDraw::DBG_DrawContactPoints);

    ///create a few basic rigid bodies
    btBoxShape *groundShape = createBoxShape(btVector3(btScalar(50.), btScalar(50.), btScalar(50.)));

    //groundShape->initializePolyhedralFeatures();
    //btCollisionShape* groundShape = new btStaticPlaneShape(btVector3(0,1,0),50);

    m_collisionShapes.push_back(groundShape);

    btTransform groundTransform;
    groundTransform.setIdentity();
    groundTransform.setOrigin(btVector3(0, -50, 0));

    {
        btScalar mass(0.);
        createRigidBody(mass, groundTransform, groundShape, btVector4(0, 0, 1, 1));
    }

    {
        //create a few dynamic rigidbodies
        // Re-using the same collision is better for memory usage and performance

        btBoxShape *colShape = createBoxShape(btVector3(.1, .1, .1));

        //btCollisionShape* colShape = new btSphereShape(btScalar(1.));
        m_collisionShapes.push_back(colShape);

        /// Create Dynamic Objects
        btTransform startTransform;
        startTransform.setIdentity();

        btScalar mass(1.f);

        //rigidbody is dynamic if and only if mass is non zero, otherwise static
        bool isDynamic = (mass != 0.f);

        btVector3 localInertia(0, 0, 0);
        if (isDynamic)
            colShape->calculateLocalInertia(mass, localInertia);

        for (int k = 0; k < ARRAY_SIZE_Y; k++)
        {
            for (int i = 0; i < ARRAY_SIZE_X; i++)
            {
                for (int j = 0; j < ARRAY_SIZE_Z; j++)
                {
                    startTransform.setOrigin(btVector3(
                        btScalar(0.2 * i),
                        btScalar(2 + .2 * k),
                        btScalar(0.2 * j)));

                    createRigidBody(mass, startTransform, colShape);
                }
            }
        }
    }

    m_guiHelper->autogenerateGraphicsObjects(m_dynamicsWorld);
}

void BasicExample::renderScene()
{
    consoleLog(" sdfdsf");
    // CommonRigidBodyBase::renderScene();
}

CommonExampleInterface *BasicExampleCreateFunc(CommonExampleOptions &options)
{
    return new BasicExample(options.m_guiHelper);
}

B3_STANDALONE_EXAMPLE(BasicExampleCreateFunc)

class WorldScene : public Scene
{
    SkyBox *skybox;
    Model *terrain2;

    void init()
    {

        this->isEnabled = true;

        shader = ResourceManager::LoadShader("game-assets/shaders/sunlight.vert", "game-assets/shaders/sunlight.frag", nullptr, "shadowMapping");
        simpleDepthShader = ResourceManager::LoadShader("game-assets/shaders/sunlightDepth.vert", "game-assets/shaders/sunlightDepth.frag", nullptr, "shadowDepth");
        debugDepthQuad = ResourceManager::LoadShader("game-assets/shaders/debug_quad.vert", "game-assets/shaders/debug_quad.frag", nullptr, "quadDepth");

        ResourceManager::LoadTexture("engine-assets/textures/grass.jpg", false, "grass");
        ResourceManager::LoadTexture("engine-assets/textures/boulder.jpg", false, "rock");
        ResourceManager::LoadTexture("engine-assets/textures/container.jpg", false, "container-side");

        // attach camera
        this->camera = context->camera = new Camera();

        Terrain *terrain = new Terrain("game-assets/heightmaps/heightmap.png");
        // this->addChild(terrain);

        terrain2 = new Model("game-assets/terrains/terrain1.obj");
        // this->addChild(terrain2);

        // add world objects
        this->createEnvironment();

        // attach player
        player = new Player();
        this->addChild(player);

        // let the camera follow the player
        this->camera->followObject(player);

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

        ///-----initialization_start-----

        ///collision configuration contains default setup for memory, collision setup. Advanced users can create their own configuration.
        btDefaultCollisionConfiguration *collisionConfiguration = new btDefaultCollisionConfiguration();

        ///use the default collision dispatcher. For parallel processing you can use a diffent dispatcher (see Extras/BulletMultiThreaded)
        btCollisionDispatcher *dispatcher = new btCollisionDispatcher(collisionConfiguration);

        ///btDbvtBroadphase is a good general purpose broadphase. You can also try out btAxis3Sweep.
        btBroadphaseInterface *overlappingPairCache = new btDbvtBroadphase();

        ///the default constraint solver. For parallel processing you can use a different solver (see Extras/BulletMultiThreaded)
        btSequentialImpulseConstraintSolver *solver = new btSequentialImpulseConstraintSolver;

        btDiscreteDynamicsWorld *dynamicsWorld = new btDiscreteDynamicsWorld(dispatcher, overlappingPairCache, solver, collisionConfiguration);

        dynamicsWorld->setGravity(btVector3(0, -10, 0));

        ///-----initialization_end-----

        //keep track of the shapes, we release memory at exit.
        //make sure to re-use collision shapes among rigid bodies whenever possible!
        btAlignedObjectArray<btCollisionShape *> collisionShapes;

        ///create a few basic rigid bodies

        {
            btCollisionShape *groundShape = new btBoxShape(btVector3(btScalar(50.), btScalar(50.), btScalar(50.)));

            collisionShapes.push_back(groundShape);

            btTransform groundTransform;
            groundTransform.setIdentity();
            groundTransform.setOrigin(btVector3(0, -56, 0));

            btScalar mass(0.);

            //rigidbody is dynamic if and only if mass is non zero, otherwise static
            bool isDynamic = (mass != 0.f);

            btVector3 localInertia(0, 0, 0);
            if (isDynamic)
                groundShape->calculateLocalInertia(mass, localInertia);

            //using motionstate is optional, it provides interpolation capabilities, and only synchronizes 'active' objects
            btDefaultMotionState *myMotionState = new btDefaultMotionState(groundTransform);
            btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState, groundShape, localInertia);
            btRigidBody *body = new btRigidBody(rbInfo);

            //add the body to the dynamics world
            dynamicsWorld->addRigidBody(body);
        }

        {
            //create a dynamic rigidbody

            //btCollisionShape* colShape = new btBoxShape(btVector3(1,1,1));
            btCollisionShape *colShape = new btSphereShape(btScalar(1.));
            collisionShapes.push_back(colShape);

            /// Create Dynamic Objects
            btTransform startTransform;
            startTransform.setIdentity();

            btScalar mass(1.f);

            //rigidbody is dynamic if and only if mass is non zero, otherwise static
            bool isDynamic = (mass != 0.f);

            btVector3 localInertia(0, 0, 0);
            if (isDynamic)
                colShape->calculateLocalInertia(mass, localInertia);

            startTransform.setOrigin(btVector3(2, 10, 0));

            //using motionstate is recommended, it provides interpolation capabilities, and only synchronizes 'active' objects
            btDefaultMotionState *myMotionState = new btDefaultMotionState(startTransform);
            btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState, colShape, localInertia);
            btRigidBody *body = new btRigidBody(rbInfo);

            dynamicsWorld->addRigidBody(body);
        }

        DummyGUIHelper noGfx;

        CommonExampleOptions options(&noGfx);
        example = BasicExampleCreateFunc(options);

        example->initPhysics();

        // example->exitPhysics();
    }

    void update(float delta)
    {
        Scene::update(delta);

        GLFWwindow *window = context->window;

        if (glfwGetKey(context->window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        {
            // context->renderer->destroy();
            this->isEnabled = false;

            context->engine->renderer->getChildByName("menu")->isEnabled = true;
        }

        if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
            camera->ProcessKeyboard(FORWARD, delta);
        if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
            camera->ProcessKeyboard(BACKWARD, delta);
        if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
            camera->ProcessKeyboard(LEFT, delta);
        if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
            camera->ProcessKeyboard(RIGHT, delta);
        if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS)
            camera->ProcessKeyboard(UP, delta);
        if (glfwGetKey(window, GLFW_KEY_Z) == GLFW_PRESS)
            camera->ProcessKeyboard(DOWN, delta);
    }

    void draw(float delta)
    {
        example->stepSimulation(1.f / 60.f);
        // example->renderScene();
        // return;

        // Scene::draw(delta);

        // consoleLog(this->player->position.x);

        // enable 3D
        glEnable(GL_DEPTH_TEST);

        // change light position over time
        lightPos.x = cos(glfwGetTime()) * 10.0f;
        lightPos.z = 10.0f;
        lightPos.z = cos(glfwGetTime()) * 5.0f;
        // lightPos.y = 20.0f;
        // lightPos = this->player->position;

        Texture2D texture = ResourceManager::GetTexture("container-side");
        Texture2D textureGrass = ResourceManager::GetTexture("grass");

        glActiveTexture(GL_TEXTURE0);
        // shader.SetInteger("texture_diffuse", 0);

        // 1. render depth of scene to texture (from light's perspective)
        // --------------------------------------------------------------
        glm::mat4 lightProjection, lightView;
        glm::mat4 lightSpaceMatrix;
        float near_plane = 1.0f, far_plane = 700.5f;
        lightProjection = glm::perspective(glm::radians(90.0f), (GLfloat)SHADOW_WIDTH / (GLfloat)SHADOW_HEIGHT, near_plane, far_plane); // note that if you use a perspective projection matrix you'll have to change the light position as the current light position isn't enough to reflect the whole scene
        // lightProjection = glm::ortho(10.0f, 10.0f, 10.0f, 10.0f, near_plane, far_plane);
        lightView = glm::lookAt(player->position, player->position, glm::vec3(player->position.x, 1.0, player->position.z));
        lightSpaceMatrix = lightProjection * lightView;
        // render scene from light's point of view
        simpleDepthShader.Use();
        simpleDepthShader.SetMatrix4("lightSpaceMatrix", lightSpaceMatrix);

        glViewport(0, 0, SHADOW_WIDTH, SHADOW_HEIGHT);
        glBindFramebuffer(GL_FRAMEBUFFER, depthMapFBO);
        glClear(GL_DEPTH_BUFFER_BIT);
        glActiveTexture(GL_TEXTURE0);

        // textureGrass.Bind();
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
        glm::mat4 projection = glm::perspective(glm::radians(camera->Zoom), (float)context->windowW / (float)context->windowH, 0.1f, 1000.0f);
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

        glActiveTexture(GL_TEXTURE1);
        Texture2D textureGrass = ResourceManager::GetTexture("grass");
        Texture2D textureRock = ResourceManager::GetTexture("rock");
        // textureGrass.Bind();

        // Terrain
        glm::mat4 model;
        model = glm::translate(model, glm::vec3(0.0f, -10.0f, 0.0f));
        model = glm::scale(model, glm::vec3(50.0f));
        shader.SetMatrix4("model", model);
        // terrain2->Draw(shader);

        // trees
        for (unsigned int i = 0; i < trees; i++)
        {
            glm::mat4 model;
            glm::vec4 random = treePositions[i];

            model = glm::translate(model, glm::vec3(random.x, 0.0f, random.z));
            model = glm::scale(model, glm::vec3(0.01f));
            // model = glm::scale(model, glm::vec3(random.w / 100));

            shader.SetMatrix4("model", model);
            // textureGrass.Bind();
            treeModel->Draw(shader);
        }

        // rocks
        for (unsigned int i = 0; i < rocks; i++)
        {
            glm::mat4 model;
            glm::vec4 random = rockPositions[i];

            model = glm::translate(model, glm::vec3(random.x, 0.0f, random.z));
            model = glm::rotate(model, random.z, glm::vec3(random.x, random.y, random.z));
            model = glm::scale(model, glm::vec3(0.1f));

            shader.SetMatrix4("model", model);
            textureRock.Bind();
            boulderModel->draw(delta, shader);
        }

        glActiveTexture(GL_TEXTURE0);
    }

    void createEnvironment()
    {
        // load models
        // -----------------------
        // rockModel = new Model("game-assets/models/rock/rock1.obj");
        rockModel = new Model("game-assets/models/rock1/Rock1.obj");
        boulderModel = new Model("game-assets/models/boulder/newboulder.obj");
        // blenderModel = new Model("game-assets/models/blenderman/BLENDERMAN!.obj");
        // treeModel = new Model("game-assets/models/tree/tree1.obj");
        // treeModel = new Model("game-assets/models/tree2/Tree1.obj");
        // treeModel = new Model("game-assets/models/tree/trees.obj");
        // treeModel = new Model("game-assets/models/tree2/Hazelnut.obj");
        treeModel = new Model("game-assets/models/tree-lp2/trees-lo-poly.obj");
        // treeModel = new Model("game-assets/models/tree-low-poly/lowtree.obj");
        // cubeModel = new Model("game-assets/models/cube/cube.obj");

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