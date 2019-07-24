out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoords;

// texture sampler
uniform sampler2D texture_diffuse;
uniform sampler2D texture2;
uniform float textureMix;

void main()
{
	// FragColor = ourColor;
	// FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), textureMix); // multiple
	FragColor = texture(texture_diffuse, TexCoords);
}