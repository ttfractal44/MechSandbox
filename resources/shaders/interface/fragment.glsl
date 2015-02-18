#version 150

in vec2 Position;

//in vec4 blarg;

out vec4 outColor;

uniform sampler2D sampler0;

void main()
{
	// TODO: Passthrough (completely transparent) portions of interface
	// Transparency should be easy to implement.  Depth test will be disabled before rendering this component.
    //outColor = texture(sampler0, vec2(gl_FragCoord.x/1066, 600-gl_FragCoord.y/600));
    outColor = texture(sampler0, vec2((Position.x+1)/2, (-Position.y+1)/2));
    //outColor = vec4(0.0, 1.0, 0.0, 1.0);
}
