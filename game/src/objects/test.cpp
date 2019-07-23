#include "test.h"

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>
#include <engine/logger.h>

float vertices[] = {
    // positions          // colors           // texture coords
    0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f,   // top right
    0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f,  // bottom right
    -0.5f, -0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, // bottom left
    -0.5f, 0.5f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f   // top left
};

unsigned int indices[] = {
    0, 1, 3, // first triangle
    1, 2, 3  // second triangle
};

GLuint VBO, VAO, EBO;

TestObject::TestObject()
{
}

void TestObject::init()
{
    RenderObject::init();

    // shader
    Shader shader = ResourceManager::LoadShader("build/engine-assets/shaders/triangle.v.glsl", "build/engine-assets/shaders/triangle.f.glsl", NULL, "triangle");
    ResourceManager::LoadTexture("build/engine-assets/textures/container.jpg", false, "container-side");

    ResourceManager::LoadTexture("build/engine-assets/textures/grass.jpg", false, "grass");
    ResourceManager::LoadTexture("build/engine-assets/textures/awesomeface.png", true, "smiley");

    // set texture index
    shader.Use();
    shader.SetInteger("texture2", 1);
    shader.SetInteger("texture3", 1);

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(0);
    // color attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
    // texture coord attribute
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)(6 * sizeof(float)));
    glEnableVertexAttribArray(2);

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
    triangleShader.SetFloat("offset", greenValue);

    Texture2D texture = ResourceManager::GetTexture("container-side");
    Texture2D texture2 = ResourceManager::GetTexture("grass");
    Texture2D texture3 = ResourceManager::GetTexture("smiley");

    glActiveTexture(GL_TEXTURE0); // activate the texture unit first before binding texture
    texture.Bind();

    glActiveTexture(GL_TEXTURE1); // activate the texture unit first before binding texture
    texture3.Bind();

    // glActiveTexture(GL_TEXTURE2); // activate the texture unit first before binding texture
    // texture3.Bind();

    // glActiveTexture(GL_TEXTURE0); // activate the texture unit first before binding texture
    // glBindTexture(GL_TEXTURE_2D, texture);

    // first MESH
    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
};

void TestObject::destroy(){

};