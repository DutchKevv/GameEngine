#ifdef __EMSCRIPTEN__
// For emscripten, instead of using glad we use its built-in support for OpenGL:
    #include <GLES3/gl3.h>
    #include <emscripten.h>
    #include <emscripten/html5.h>
#else
    #include <glad/glad.h>
#endif

#include <GLFW/glfw3.h>