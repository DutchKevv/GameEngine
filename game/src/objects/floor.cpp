#include "floor.h"

#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>

using namespace glm;

static unsigned int VBO, VAO, EBO;

float vertices[] = {
    // positions          // texture coords
    100.0f, 100.0f, 1.0f, 100.0f, 100.0f, // top right
    100.0f, -100.0f, 1.0f, 100.0f, 0.0f,  // bottom right
    -100.0f, -100.0f, -1.0f, 0.0f, 0.0f,  // bottom left
    -100.0f, 100.0f, -1.0f, 0.0f, 100.0f  // top left
};
unsigned int indices[] = {
    0, 1, 3, // first triangle
    1, 2, 3  // second triangle
};

Floor::Floor() : RenderObject()
{
}

void Floor::init()
{
    RenderObject::init();

    // shader
    Shader shader = ResourceManager::LoadShader("build/engine-assets/shaders/simple_3d.vs", "build/engine-assets/shaders/simple_3d.fs", NULL, "simple3D2");

    ResourceManager::LoadTexture("build/engine-assets/textures/grass.jpg", false, "grass");

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(0);
    
    // texture coord attribute
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // set texture index
    // shader.Use();
    // shader.SetInteger("texture1", 0);
    // shader.SetInteger("texture2", 1);
}

void Floor::update(float delta)
{
}

void Floor::draw(float delta)
{
    float greenValue = (sin(glfwGetTime()) / 2.0f) + 0.5f;

    Shader shader = ResourceManager::GetShader("simple3D");
    Texture2D texture = ResourceManager::GetTexture("grass");

    shader.Use();
    texture.Bind();
    // Texture2D texture = ResourceManager::GetTexture("container-side");

    // bind textures on corresponding texture units
    // glActiveTexture(GL_TEXTURE0);
    

    // create transformations
    mat4 model = rotate(mat4(1.0f), radians(-90.0f), vec3(1.0f, 0.0f, 0.0f));
    mat4 view = context->camera->GetViewMatrix();
    mat4 projection = perspective(radians(context->camera->Zoom), (float)context->windowW / context->windowH, 0.1f, 100.0f);

    model = translate(model, vec3(0.0f, 1.0f, 0.0f));
    view = translate(view, vec3(0.0f, 0.0f, -3.0f));
    projection = perspective(radians(45.0f), (float)context->windowW / context->windowH, 0.1f, 100.0f);

    shader.SetMatrix4("model", model);
    shader.SetMatrix4("view", view);
    shader.SetMatrix4("projection", projection);

    // render container
    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
}

void Floor::destroy(){
    // Cleanup VBO
    //    shader->destroy();
};