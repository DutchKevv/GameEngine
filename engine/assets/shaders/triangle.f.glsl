in vec4 vertexColor;

out vec4 FragColor;

uniform vec4 ourColor; // we set this variable in the OpenGL code.

void main()
{
    FragColor = vertexColor;
    // FragColor = vec4(0.0f, 0.5f, 0.2f, 1.0f);
};