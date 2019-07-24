#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "camera.h"
#include "renderObject.h"

class SkyBox: public RenderObject {
private:
    Shader *shader;
    
public:
    SkyBox();

    void init();
    void draw(float delta);
    void move();
    void destroy();
};
