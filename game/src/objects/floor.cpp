#include "floor.h"

#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/context.h>

using namespace glm;

static unsigned int VBO, VAO, EBO;

static Shader shader;
static Shader simpleDepthShader;
static Shader debugDepthQuad;

float vertices[] = {
    // positions            // normals         // texcoords
    250.0f, -0.5f, 250.0f, 0.0f, 1.0f, 0.0f, 250.0f, 0.0f,
    -250.0f, -0.5f, 250.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f,
    -250.0f, -0.5f, -250.0f, 0.0f, 1.0f, 0.0f, 0.0f, 250.0f,

    250.0f, -0.5f, 250.0f, 0.0f, 1.0f, 0.0f, 250.0f, 0.0f,
    -250.0f, -0.5f, -250.0f, 0.0f, 1.0f, 0.0f, 0.0f, 250.0f,
    250.0f, -0.5f, -250.0f, 0.0f, 1.0f, 0.0f, 250.0f, 250.0f};

void Floor::init()
{
    ResourceManager::LoadTexture("engine-assets/textures/grass.jpg", false, "grass");

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)(6 * sizeof(float)));
    glBindVertexArray(0);
}

void Floor::renderScene(float delta, Shader &shader, bool isShadowRender)
{
    glActiveTexture(GL_TEXTURE0);
    Texture2D textureGrass = ResourceManager::GetTexture("grass");
    textureGrass.Bind();

    glm::mat4 model = glm::mat4(1.0f);
    shader.SetMatrix4("model", model);
    glBindVertexArray(VAO);
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glBindVertexArray(0);
}

void Floor::destroy(){
    // Cleanup VBO
    //    shader->destroy();
};