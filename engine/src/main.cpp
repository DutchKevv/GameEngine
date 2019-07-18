#include <stdio.h>
#include <stdlib.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>

void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error: %s\n", description);
}

// Main execution  function
int main(void)
{

    GLFWwindow *window;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
    {
        // Initialization failed
    }

    window = glfwCreateWindow(640, 480, "Game Engine", NULL, NULL);

    if (!window)
    {
        // Window or OpenGL context creation failed
    }

    while (!glfwWindowShouldClose(window))
    {
        float ratio;
        int width, height;
       
        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();

    exit(EXIT_SUCCESS);
}