#ifndef _TERRAINCLASS_H_
#define _TERRAINCLASS_H_

#include "./opengl_headers.h"
#include <stdio.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <string>
#include <vector>
#include <STB/stb_image.h>
#include "./shader.h"

class Terrain : public RenderObject
{
public:
    unsigned int VBO, VAO, EBO;
    Shader shader;
    Shader simpleDepthShader;
    Shader debugDepthQuad;

    vector<GLfloat> vertices;
    vector<GLuint> connect_points;

    stbi_uc ht_pixel;

    int bmp_x = 0;
    int bmp_z = 0; // the Y axis of the bmp, really, but considered "z" for conversion to OpenGL coords.
    int width, height, channels;

    GLfloat land_scale = 5.0f;
    GLfloat height_scale = 100.0f;
    GLfloat height_true = 0.0f;

    unsigned char r, g, b; // To store the retreived r,g,b components of each pixel.
    std::string filePath;

    Terrain(std::string filePath)
    {
        this->filePath = filePath;
        RenderObject();
    }

    void init()
    {
        shader = ResourceManager::LoadShader("game-assets/shaders/sunlight.vert", "game-assets/shaders/sunlight.frag", nullptr, "shadowMapping2");
        simpleDepthShader = ResourceManager::LoadShader("game-assets/shaders/sunlightDepth.vert", "game-assets/shaders/sunlightDepth.frag", nullptr, "shadowDepth");
        debugDepthQuad = ResourceManager::LoadShader("game-assets/shaders/debug_quad.vert", "game-assets/shaders/debug_quad.frag", nullptr, "quadDepth");

        shader.Use();

        this->load(filePath);
        this->make_point_connections(height, width, connect_points);
        // printf("%llu", sizeof(connect_points));

        glGenVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);
        glBindVertexArray(VAO);
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        // double* a = &v[0];
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), &vertices, GL_STATIC_DRAW);
        glEnableVertexAttribArray(0);
        glVertexAttribPointer(0, 6, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)0);
        glEnableVertexAttribArray(1);
        glVertexAttribPointer(1, 6, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)(6 * sizeof(float)));
        // glEnableVertexAttribArray(2);
        // glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *)(6 * sizeof(float)));
        glBindVertexArray(0);
    }

    void load(std::string filePath)
    {
        stbi_uc *image = stbi_load(filePath.c_str(), &width, &height, &channels, 0);

        if (image != nullptr)
        {

            unsigned bytePerPixel = channels;

            // Reserve the space in the vector, which is a good practice, with the total number of coordinate place holders...
            vertices.reserve(size_t(width * height * 3)); // An x,y,z for each pixel read.

            // ..and populate the verts vector...
            for (bmp_z = 0; bmp_z < height; bmp_z++)
            {
                for (bmp_x = 0; bmp_x < width; bmp_x++)
                {
                    vertices.push_back(GLfloat(bmp_x * land_scale));

                    unsigned char *pixelOffset = image + (bmp_x + bmp_x * 1) * bytePerPixel;
                    unsigned char r = pixelOffset[0];
                    unsigned char g = pixelOffset[1];
                    unsigned char b = pixelOffset[2];
                    unsigned char a = channels >= 4 ? pixelOffset[3] : 0xff;

                    // Get the "height" of the OpenGL Y coord according to the "color" of the pixel...
                    // r = ht_pixel = image[width * height + bmp_x];

                    if (ht_pixel != 0)
                        consoleLog(ht_pixel);

                    // al_unmap_rgb(ht_pixel, &r, &g, &b); // Thanks, Tomasu!

                    height_true = GLfloat(float(r) / 255.0f) * height_scale; // Uses only the red component...
                    vertices.push_back(height_true);                         // Assign the value to the vector.

                    vertices.push_back(GLfloat(bmp_z * land_scale));
                }
            }
        }
        else
        {
            consoleLog("ERROR::TERRAIN: could not find or load image");
        }
    }

    void draw(float delta)
    {
        
    }

    void renderScene(float delta, Shader &shader, bool isShadowRender)
    {
        ResourceManager::GetShader("shadowMapping").Use();

        glEnable(GL_CULL_FACE);
        glFrontFace(GL_CCW);
        glCullFace (GL_FRONT_AND_BACK);

        glActiveTexture(GL_TEXTURE0);
        // Texture2D textureGrass = ResourceManager::GetTexture("container-side");
        Texture2D textureGrass = ResourceManager::GetTexture("grass");
        textureGrass.Bind();

        glm::mat4 model = glm::mat4(1.0f);
        shader.SetMatrix4("model", model);
        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0,  sizeof(vertices));
        glBindVertexArray(0);
        // glCullFace(GL_BACK);
    }

    void make_point_connections(int BMP_HT,
                                int BMP_WD,
                                vector<GLuint> &points)
    {
        GLuint i = 0;
        size_t point_count = (BMP_WD - 1) * (BMP_HT - 1) * 6;
        GLuint triangle_count = ((BMP_WD - 1) * (BMP_HT - 1)) + (BMP_HT - 1);
        points.reserve(point_count);

        int width_cnt = 0;

        for (i = 0; i < triangle_count; i++)
        {
            if (width_cnt == (BMP_WD - 1))
            {
                width_cnt = 0;
                continue;
            }
            else
            {
                // Triangle 1
                points.push_back(i);
                points.push_back(i + 1);
                points.push_back(i + BMP_WD);

                // Triangle 2
                points.push_back(i + 1);
                points.push_back(i + BMP_WD + 1);
                points.push_back(i + BMP_WD);
                // Mod: both triangles go around counter clockwise now...

                width_cnt++;
            }
        }
    }
};

#endif