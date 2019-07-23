#include "test.h"

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>
#include <engine/logger.h>

float vertices1[] = {
    -1.0f,
    -0.5f,
    0.0f,
    0.0f,
    -0.5f,
    0.0f,
    -0.5f,
    0.5f,
    0.0f,

    0.0f,
    -0.5f,
    0.0f,
    1.0f,
    -0.5f,
    0.0f,
    0.5f,
    0.5f,
    0.0f,
};

float vertices2[] = {

    -0.5f,
    1.0f,
    0.0f,
    0.5f,
    1.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
};

GLuint VBO, VAO;
GLuint VBO2, VAO2;

TestObject::TestObject()
{
}

void TestObject::init()
{
    RenderObject::init();

    // shader
    Shader shader = ResourceManager::LoadShader("build/engine-assets/shaders/triangle.v.glsl", "build/engine-assets/shaders/triangle.f.glsl", NULL, "triangle");
    // Shader shader = ResourceManager::LoadShader("/home/kewin/Projects/game-engine/engine/assets/shaders/TriangleVertex.glsl", "/home/kewin/Projects/game-engine/engine/assets/shaders/TriangleFragment.glsl", NULL, "triangle");

    // FIRST MESH
    glGenBuffers(1, &VBO);                                                       // vertices buffer
    glGenVertexArrays(1, &VAO);                                                  // vertices array
    glBindVertexArray(VAO);                                                      // set active
    glBindBuffer(GL_ARRAY_BUFFER, VBO);                                          // set active
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices1), vertices1, GL_STATIC_DRAW); // how to read vertices array

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(0);

    // SECOND MESH
    glGenBuffers(1, &VBO2);                                                      // vertices buffer
    glGenVertexArrays(1, &VAO2);                                                 // vertices array
    glBindVertexArray(VAO2);                                                     // set active
    glBindBuffer(GL_ARRAY_BUFFER, VBO2);                                         // set active
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices1), vertices2, GL_STATIC_DRAW); // how to read vertices array

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(0);

    // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
    // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
    glBindVertexArray(0);

    consoleLog("test object init done");
}

void TestObject::update()
{
    RenderObject::update();

    // consoleLog("testObject update");
}

void TestObject::draw()
{
    float timeValue = glfwGetTime();
    float greenValue = (sin(timeValue) / 2.0f) + 0.5f;

    Shader triangleShader = ResourceManager::GetShader("triangle");
    triangleShader.Use();

    // update color
    // int vertexColorLocation = triangleShader.getUniformPos("ourColor");
    // glUniform4f(vertexColorLocation, 0.0f, greenValue, 0.0f, 1.0f);

    // update offset
    triangleShader.SetFloat("offset",greenValue);

    // first MESH
    glBindVertexArray(VAO);
    glDrawArrays(GL_TRIANGLES, 0, 6);

    // second MESH
    glBindVertexArray(VAO2);
    glDrawArrays(GL_TRIANGLES, 0, 3);
};

void TestObject::destroy(){

};