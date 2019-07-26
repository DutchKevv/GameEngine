#include "./opengl_headers.h"

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
