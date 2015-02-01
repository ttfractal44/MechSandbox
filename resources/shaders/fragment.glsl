#version 150

in vec3 modelColor;
in vec3 modelNormal;
in vec3 modelPosition;

out vec4 outColor;

uniform mat4 model;
uniform mat4 proj;
uniform mat4 view;

void main()
{

    vec3 lightPosition = vec3(0,0,10);
    
    float strength = 100;
    
    vec3 eyePosition = vec3(inverse(view)[3]);						// Location of camera in World space

    mat3 normalMatrix = transpose(inverse(mat3(model)));

    vec3 position = vec3(model * vec4(modelPosition, 1.0));
    
    vec3 normal = normalize(normalMatrix * modelNormal);			// Normal vector in World space, points away perpendicularly from surface
    vec3 incident = normalize(lightPosition - position);			// Incident vector in World space, points from point on surface to light source
    vec3 reflection = -normalize(reflect(incident, normal));			// Reflected vector in World space, points from surface in reverse direction of incident, reflected over surface
    
    vec3 eye = normalize(eyePosition - position);					// Vector pointing from point on surface to camera
    
    
    float dist = length(lightPosition - position);

    float diffuse = strength*dot(normal, incident) / (dist*dist);
    float specular = strength*(pow(dot(reflection, eye),100)) / (dist*dist);
    if (dot(reflection, eye)<0) {
    	specular = 0;
    }
    float ambient = 0.1;
    
    diffuse = max(diffuse,0);
    specular = max(specular,0);
    
    vec3 diffuseColor = clamp(modelColor, 0.05, 0.95);
    
    vec3 specularColor = vec3(1,1,1);

    outColor = vec4(diffuse*diffuseColor + ambient*diffuseColor + specular*specularColor, 1.0);
    
}
