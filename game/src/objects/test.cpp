#include "test.h"

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>
#include <engine/logger.h>

float vertices2D[] = {
    // positions          // colors           // texture coords
    0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f,   // top right
    0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f,  // bottom right
    -0.5f, -0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, // bottom left
    -0.5f, 0.5f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f   // top left
};

float vertices3D[] = {
    -0.5f, -0.5f, -0.5f, 0.0f, 0.0f,
    0.5f, -0.5f, -0.5f, 1.0f, 0.0f,
    0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
    0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
    -0.5f, 0.5f, -0.5f, 0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f, 0.0f, 0.0f,

    -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
    0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
    0.5f, 0.5f, 0.5f, 1.0f, 1.0f,
    0.5f, 0.5f, 0.5f, 1.0f, 1.0f,
    -0.5f, 0.5f, 0.5f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,

    -0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
    -0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
    -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
    -0.5f, 0.5f, 0.5f, 1.0f, 0.0f,

    0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
    0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
    0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
    0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
    0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
    0.5f, 0.5f, 0.5f, 1.0f, 0.0f,

    -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
    0.5f, -0.5f, -0.5f, 1.0f, 1.0f,
    0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
    0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
    -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
    -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,

    -0.5f, 0.5f, -0.5f, 0.0f, 1.0f,
    0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
    0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
    0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
    -0.5f, 0.5f, 0.5f, 0.0f, 0.0f,
    -0.5f, 0.5f, -0.5f, 0.0f, 1.0f};

glm::vec3 cubePositions[] = {
    glm::vec3(0.0f, 0.0f, 0.0f),
    glm::vec3(2.0f, 5.0f, -15.0f),
    glm::vec3(-1.5f, -2.2f, -2.5f),
    glm::vec3(-3.8f, -2.0f, -12.3f),
    glm::vec3(2.4f, -0.4f, -3.5f),
    glm::vec3(-1.7f, 3.0f, -7.5f),
    glm::vec3(1.3f, -2.0f, -2.5f),
    glm::vec3(1.5f, 2.0f, -2.5f),
    glm::vec3(1.5f, 0.2f, -1.5f),
    glm::vec3(-1.3f, 1.0f, -1.5f)};

GLuint VBO, VAO, EBO;

TestObject::TestObject()
{
}

void TestObject::init()
{
    RenderObject::init();

    // shader
    Shader shader = ResourceManager::LoadShader("build/engine-assets/shaders/simple_3d.vs", "build/engine-assets/shaders/simple_3d.fs", NULL, "triangle");
    ResourceManager::LoadTexture("build/engine-assets/textures/container.jpg", false, "container-side");

    ResourceManager::LoadTexture("build/engine-assets/textures/grass.jpg", false, "grass");
    ResourceManager::LoadTexture("build/engine-assets/textures/awesomeface.png", true, "smiley");

    // set texture index
    shader.Use();
    shader.SetInteger("texture1", 0);
    shader.SetInteger("texture2", 1);
    // shader.SetInteger("texture3", 1);

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices3D), vertices3D, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(0);
    // texture coord attribute
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    consoleLog("test object init done");
}

void TestObject::update()
{
    RenderObject::update();

    // consoleLog("testObject update");
}

void TestObject::draw()
{
    float greenValue = (sin(glfwGetTime()) / 2.0f) + 0.5f;

    Shader triangleShader = ResourceManager::GetShader("triangle");
    triangleShader.Use();

    Texture2D texture = ResourceManager::GetTexture("container-side");
    Texture2D texture2 = ResourceManager::GetTexture("grass");
    Texture2D texture3 = ResourceManager::GetTexture("smiley");

    glm::mat4 model = glm::mat4(1.0f);
    glm::mat4 view = glm::mat4(1.0f);
    glm::mat4 projection;

    model = glm::rotate(model, (float)glfwGetTime() * glm::radians(50.0f), glm::vec3(0.5f, 1.0f, 0.0f));
    model = glm::scale(model, glm::vec3(0.5f, 0.5f, 0.5f));
    view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));
    projection = glm::perspective(glm::radians(45.0f), (float)context->windowW / context->windowH, 0.1f, 100.0f);

    glUniformMatrix4fv(triangleShader.getUniformPos("model"), 1, GL_FALSE, glm::value_ptr(model));
    glUniformMatrix4fv(triangleShader.getUniformPos("view"), 1, GL_FALSE, glm::value_ptr(view));
    glUniformMatrix4fv(triangleShader.getUniformPos("projection"), 1, GL_FALSE, glm::value_ptr(projection));

    // update texture mix
    int textureMixLocation = triangleShader.getUniformPos("textureMix");
    glUniform1f(textureMixLocation, greenValue);

    // update offset
    // triangleShader.SetFloat("offset", greenValue);

    glActiveTexture(GL_TEXTURE0); // activate the texture unit first before binding texture
    texture.Bind();

    glActiveTexture(GL_TEXTURE1); // activate the texture unit first before binding texture
    texture3.Bind();

    // glm::mat4 transform = glm::mat4(1.0f);
    // transform = glm::translate(transform, glm::vec3(0.0f, 0.0f, 1.0f));
    // transform = glm::rotate(transform, (float)glfwGetTime(), glm::vec3(0.0f, 0.0f, 1.0f));

    // transform matrix
    // int transformLocation = triangleShader.getUniformPos("transform");
    // glUniformMatrix4fv(transformLocation, 1, GL_FALSE, glm::value_ptr(transform));

    // first MESH
    glBindVertexArray(VAO);

    for (unsigned int i = 0; i < 10; i++)
    {
        glm::mat4 model = glm::mat4(1.0f);
        model = glm::translate(model, cubePositions[i]);
        float angle = 20.0f * i;
        model = glm::rotate(model, (float)glfwGetTime() * glm::radians(50.0f), glm::vec3(1.0f, 0.3f, 0.5f));
        triangleShader.SetMatrix4("model", model);

        glDrawArrays(GL_TRIANGLES, 0, 36);
    }
    // glDrawArrays(GL_TRIANGLES, 0, 36);

    // second transformation
    // ---------------------
    // transform = glm::mat4(1.0f); // reset it to identity matrix
    // transform = glm::translate(transform, glm::vec3(-0.5f, 0.5f, 0.0f));
    // float scaleAmount = sin(glfwGetTime());
    // transform = glm::scale(transform, glm::vec3(scaleAmount, scaleAmount, scaleAmount));
    // glUniformMatrix4fv(transformLocation, 1, GL_FALSE, &transform[0][0]); // this time take the matrix value array's first element as its memory pointer value

    // now with the uniform matrix being replaced with new transformations, draw it again.
    // glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
};

void TestObject::destroy(){

};