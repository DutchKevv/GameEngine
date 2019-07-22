layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

uniform float offset; // we set this variable in the OpenGL code.

out vec4 vertexColor; // specify a color output to the fragment shader

void main()
{
    gl_Position = vec4(aPos.x, aPos.y + offset, aPos.z, 1.0);
    vertexColor = vec4(0.5, 0.0, 0.0, 1.0); // set the output variable to a dark-red color
}