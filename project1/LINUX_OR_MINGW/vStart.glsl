#version 150

in  vec4 vPosition;
in  vec2 vTexCoord;

out vec2 texCoord;
out vec3 pos;

uniform mat4 ModelView;
uniform mat4 Projection;



void main()
{

    // Transform vertex position into eye coordinates
    pos = (ModelView * vPosition).xyz;


    gl_Position = Projection * ModelView * vPosition;
    texCoord = vTexCoord;
}
