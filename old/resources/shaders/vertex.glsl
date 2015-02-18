#version 150

in vec3 position;
in vec3 color;
in vec3 normal;

out vec3 modelColor;
out vec3 modelNormal;
out vec3 modelPosition;


uniform mat4 model;
uniform mat4 proj;
uniform mat4 view;

void main()
{
    modelColor = color;
    modelNormal = normal;
    modelPosition = position;
    gl_Position = proj * view * model * vec4(position, 1.0);
}
