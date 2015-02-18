#version 150

in vec3 modelColorRaw;
in vec3 modelNormal;
in vec3 modelPosition;

out vec4 outColor;

uniform mat4 model;
uniform mat4 proj;
uniform mat4 view;

void main()
{

    vec3 lightPosition = vec3(10,10,0.1);


    mat3 normalMatrix = transpose(inverse(mat3(model)));
    vec3 normal = normalize(normalMatrix * modelNormal);

    vec3 position = vec3(model * vec4(modelPosition,1));

    vec3 lightRelative = lightPosition - position;

    float intensity = dot(normal, lightRelative) / (length(lightRelative) * length(normal));

    intensity = clamp(intensity,0,10);

    intensity += 0.1;

    vec3 modelColor = clamp(modelColorRaw, 0.05, 0.95);

    outColor = vec4(intensity * modelColor, 1);
}
