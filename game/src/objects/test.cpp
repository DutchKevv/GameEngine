#include "test.h"

#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>
#include <engine/logger.h>

static float vertices2[] = {
    500.0f, -0.0f, 500.0f, 500.0f, 0.0f,
    -500.0f, -0.0f, 500.0f, 0.0f, 0.0f,
    -500.0f, -0.0f, -500.0f, 0.0f, 500.0f,

    500.0f, -0.0f, 500.0f, 500.0f, 0.0f,
    -500.0f, -0.0f, -500.0f, 0.0f, 500.0f,
    500.0f, -0.0f, -500.0f, 1.0f, 1.0f};

float vertices[] = {
    -0.5f, -0.5f, 0.0f,
    0.5f, -0.5f, 0.0f,
    0.0f, 0.5f, 0.0f};

TestObject::TestObject()
{

}

void TestObject::init()
{

    // RenderObject::init();

    int VBO, VAO;

    // glGenBuffers(1, &VBO);
    // glBindBuffer(GL_ARRAY_BUFFER, VBO);
    // glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    consoleLog("test object init done");
}

void TestObject::update()
{
    consoleLog("testObject update");
}

void TestObject::draw()
{
    //    BaseRenderObj::draw();
    //
    //    Shader shader = ResourceManager::GetShader("world");
    //    shader.Use();
    //
    //    ResourceManager::GetTexture("grass").Bind();
    //
    //    glBindVertexArray(VAO);
    //
    ////    glCullFace(GL_FRONT);
    ////    glEnable(GL_CULL_FACE);
    //
    //    // create transformations
    //    glm::mat4 model;
    //
    //    // camera/view transformation
    ////    shader.SetMatrix4("projection", projection);
    ////    shader.SetMatrix4("view", view);
    //    shader.SetMatrix4("model", model);
    //
    //    glDrawArrays(GL_TRIANGLES, 0, 6);
    //
    //    glBindVertexArray(0);
    //    glActiveTexture(GL_TEXTURE0);
    //    glDisable(GL_CULL_FACE);
};

void TestObject::destroy()
{
    // Cleanup VBO
    //    shader->destroy();
};