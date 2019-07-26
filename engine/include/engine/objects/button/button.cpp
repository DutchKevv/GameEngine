#include "button.h"

#include "../../opengl_headers.h"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "../../shader.h"
#include "../../texture.h"
#include "../../resourceManager.h"
#include "../../context.h"
#include "../../logger.h"

using namespace glm;

static Shader shader;
static Shader simpleDepthShader;
static Shader debugDepthQuad;
static unsigned int VBO, VAO, EBO;

static float vertices[] = {
    // positions            // normals         // texcoords
    0.2f, -0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.5f, 0.0f,
    -0.2f, -0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f,
    -0.2f, -0.0f, -0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 0.5f,

    0.2f, -0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.5f, 0.0f,
    -0.2f, -0.0f, -0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 0.5f,
    0.2f, -0.0f, -0.5f, 0.0f, 1.0f, 0.0f, 0.5f, 0.5f
    };

Button::Button()
{
    RenderObject();
}

void Button::init()
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

void Button::update(float delta)
{
}

void Button::renderScene(float delta, Shader &shader, bool isShadowRender)
{
    glm::mat4 projection = glm::perspective(glm::radians(context->camera->Zoom), (float)context->windowW / (float)context->windowH, 0.1f, 100.0f);
    glm::mat4 view = context->camera->GetViewMatrix();
    shader.SetMatrix4("projection", projection);
    shader.SetMatrix4("view", view);

    glActiveTexture(GL_TEXTURE0);
    Texture2D textureGrass = ResourceManager::GetTexture("grass");
    textureGrass.Bind();

    glm::mat4 model = glm::mat4(1.0f);
    // model = glm::rotate(model, 2.1f, glm::vec3(1.0f, 1, 1.0f));
    shader.SetMatrix4("model", model);
    glBindVertexArray(VAO);
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glBindVertexArray(0);
}

void Button::destroy(){

};