#include "test.h"

#include <engine/opengl_headers.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>
#include <engine/logger.h>

using namespace glm;

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

vec3 cubePositions[] = {
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

GLuint VBO, VAO, EBO;

TestObject::TestObject()
{
}

void TestObject::init()
{
    RenderObject::init();

    // shader
    Shader shader = ResourceManager::LoadShader("engine-assets/shaders/simple_3d.vs", "engine-assets/shaders/simple_3d.fs", NULL, "simple3D");
    ResourceManager::LoadTexture("engine-assets/textures/container.jpg", false, "container-side");

    ResourceManager::LoadTexture("engine-assets/textures/grass.jpg", false, "grass");
    ResourceManager::LoadTexture("engine-assets/textures/awesomeface.png", true, "smiley");

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

void TestObject::update(float delta)
{

}

void TestObject::draw(float delta)
{
    float greenValue = (sin(glfwGetTime()) / 2.0f) + 0.5f;

    Shader shader = ResourceManager::GetShader("simple3D");
    shader.Use();

    Texture2D texture = ResourceManager::GetTexture("container-side");
    Texture2D texture2 = ResourceManager::GetTexture("grass");
    Texture2D texture3 = ResourceManager::GetTexture("smiley");

    mat4 model = mat4(1.0f);
    mat4 view = context->camera->GetViewMatrix();
    mat4 projection = perspective(radians(context->camera->Zoom), (float)context->windowW / context->windowH, 0.1f, 100.0f);

    shader.SetMatrix4("view", view);
    shader.SetMatrix4("projection", projection);

    // update texture mix
    int textureMixLocation = shader.getUniformPos("textureMix");
    glUniform1f(textureMixLocation, greenValue);

    // update offset
    // shader.SetFloat("offset", greenValue);

    glActiveTexture(GL_TEXTURE0); // activate the texture unit first before binding texture
    texture.Bind();

    glActiveTexture(GL_TEXTURE1); // activate the texture unit first before binding texture
    texture3.Bind();

    // mat4 transform = mat4(1.0f);
    // transform = translate(transform, vec3(0.0f, 0.0f, 1.0f));
    // transform = rotate(transform, (float)glfwGetTime(), vec3(0.0f, 0.0f, 1.0f));

    // transform matrix
    // int transformLocation = triangleShader.getUniformPos("transform");
    // glUniformMatrix4fv(transformLocation, 1, GL_FALSE, value_ptr(transform));

    // first MESH
    glBindVertexArray(VAO);

    for (unsigned int i = 0; i < 10; i++)
    {
        mat4 model = mat4(1.0f);
        model = translate(model, cubePositions[i]);
        float angle = 20.0f * i;
        model = rotate(model, (float)glfwGetTime() * radians(50.0f), vec3(1.0f, 0.3f, 0.5f));
        shader.SetMatrix4("model", model);

        glDrawArrays(GL_TRIANGLES, 0, 36);
    }
    // glDrawArrays(GL_TRIANGLES, 0, 36);

    // second transformation
    // ---------------------
    // transform = mat4(1.0f); // reset it to identity matrix
    // transform = translate(transform, vec3(-0.5f, 0.5f, 0.0f));
    // float scaleAmount = sin(glfwGetTime());
    // transform = scale(transform, vec3(scaleAmount, scaleAmount, scaleAmount));
    // glUniformMatrix4fv(transformLocation, 1, GL_FALSE, &transform[0][0]); // this time take the matrix value array's first element as its memory pointer value

    // now with the uniform matrix being replaced with new transformations, draw it again.
    // glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
};

void TestObject::destroy(){

};