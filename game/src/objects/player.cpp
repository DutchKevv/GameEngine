#include "player.h"

#include <math.h>
#include <engine/shader.h>
#include <engine/texture.h>
#include <engine/resourceManager.h>
#include <engine/model.h>
#include <engine/context.h>

using namespace glm;

static unsigned int VBO, VAO, EBO;

Player::Player()
{
}

void Player::init()
{
    RenderObject::init();

    Shader shader = ResourceManager::LoadShader("build/engine-assets/shaders/simple_3d.vs", "build/engine-assets/shaders/simple_3d.fs", NULL, "simple3D");

    playerModel = new Model("build/game-assets/models/plane/FREOBJ.obj");

    // shader.SetInteger("texture_diffuse", 0);
    // glActiveTexture(GL_TEXTURE0);
}

void Player::update(float delta)
{

    if (speed > 0)
    {
        speed -= 0.001f * delta;
        if (speed < 0)
            speed = 0;
    }

    if (glfwGetKey(context->window, GLFW_KEY_LEFT) == GLFW_PRESS)
        this->processKeyboard(LEFT, delta);
    if (glfwGetKey(context->window, GLFW_KEY_RIGHT) == GLFW_PRESS)
        this->processKeyboard(RIGHT, delta);
    if (glfwGetKey(context->window, GLFW_KEY_UP) == GLFW_PRESS)
        this->processKeyboard(UP, delta);
    if (glfwGetKey(context->window, GLFW_KEY_DOWN) == GLFW_PRESS)
        this->processKeyboard(DOWN, delta);
    if (glfwGetKey(context->window, GLFW_KEY_W) == GLFW_PRESS)
        this->processKeyboard(W, delta);
    if (glfwGetKey(context->window, GLFW_KEY_S) == GLFW_PRESS)
        this->processKeyboard(S, delta);
    if (glfwGetKey(context->window, GLFW_KEY_A) == GLFW_PRESS)
        this->processKeyboard(A, delta);
    if (glfwGetKey(context->window, GLFW_KEY_D) == GLFW_PRESS)
        this->processKeyboard(D, delta);

    if (context->mouse->active)
    {
        context->camera->ProcessMouseMovement(context->mouse->offsetX, context->mouse->offsetY);
    }

    if (context->scroll->active)
    {
        context->camera->ProcessMouseScroll(context->scroll->offsetY);
    }
}

void Player::draw(float delta)
{
    Shader shader = ResourceManager::GetShader("simple3D");
    shader.Use();

    glm::mat4 model;

    position.z += speed * sinf(0.1f);
    position.x += speed * xRadius * sinf(0.1f);
    position.y = 10.0f;
    // position.y += yM;

    model = glm::translate(model, position);
    model = glm::scale(model, glm::vec3(0.2f));

    // Normalize
    model = glm::rotate(model, -1.75f, glm::vec3(1.0f, 0.0f, 0.0f));

    // horizontal x
    model = glm::rotate(model, xRadius, glm::vec3(0.0f, 0.0f, 1.0f));

    // horizontal y
    float pointDir = yM * 2;
    model = glm::rotate(model, yRadius, glm::vec3(0.0f, 1.0f, 0.0f));
    model = glm::rotate(model, -pointDir, glm::vec3(1.0f, 0.0f, 0.0f));

    shader.SetMatrix4("model", model);

    // glm::vec3 cPosition = glm::vec3(position.x, position.y, position.z);
    // context->camera->followObject(this);

    playerModel->Draw(shader);
}

void Player::renderScene(float delta, Shader &shader, bool isShadowRender) {
    // TextureFromFile
}

void Player::destroy(){
    // Cleanup VBO
    //    shader->destroy();
};

int Player::processKeyboard(Camera_Movement direction, float velocity)
{
    switch (direction)
    {
    case UP:
        yM -= velocity * 0.2f;
        break;
    case DOWN:
        if (speed > airborneThreshold)
            yM += velocity * 0.2f;
        break;
    case LEFT:
        // if (speed > 0)
        xRadius += velocity * 1.0f;
        break;
    case RIGHT:
        // if (speed > 0)
        xRadius -= velocity * 1.0f;
        break;
    case W:
        if (speed < maxSpeed)
            speed += velocity * 0.01f;
        break;
    case S:
        if (speed > minSpeed)
            speed -= velocity * 0.05f;
        break;
    case A:
        if (isAirborne)
            yRadius += velocity * 1.0f;
        break;
    case D:
        if (isAirborne)
            yRadius -= velocity * 1.0f;
        break;
    default:
        break;
    }

    if (speed > maxSpeed)
    {
        speed = maxSpeed;
    }

    if (speed < minSpeed)
    {
        speed = minSpeed;
    }

    return 0;
}
