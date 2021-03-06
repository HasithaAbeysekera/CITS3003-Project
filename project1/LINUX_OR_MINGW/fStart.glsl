#version 150

in  vec2 texCoord;  // The third coordinate is always 0.0 and is discarded
in  vec4 vPosition;
in  vec3 vNormal;
in  vec3 pos;


out vec4 fColor;

uniform sampler2D texture;

uniform vec3 AmbientProduct, DiffuseProduct, SpecularProduct;
uniform mat4 ModelView;
uniform mat4 Projection;
uniform vec4 LightPosition;
uniform float Shininess;

vec4 color;

void
main()
{

    // Transform vertex position into eye coordinates
    //vec3 pos = (ModelView * vPosition).xyz;


    // The vector to the light from the vertex    
    vec3 Lvec = LightPosition.xyz - pos;

    // Unit direction vectors for Blinn-Phong shading calculation
    vec3 L = normalize( Lvec );   // Direction to the light source
    vec3 E = normalize( -pos );   // Direction to the eye/camera
    vec3 H = normalize( L + E );  // Halfway vector

    // Transform vertex normal into eye coordinates (assumes scaling is uniform across dimensions)
    vec3 N = normalize( (ModelView*vec4(vNormal, 0.0)).xyz );

    // Compute terms in the illumination equation
    vec3 ambient = AmbientProduct;

    float Kd = max( dot(L, N), 0.0 );
    vec3  diffuse = Kd*DiffuseProduct;

    float Ks = pow( max(dot(N, H), 0.0), Shininess );
    vec3  specular = Ks * SpecularProduct;
    
    if( dot(L, N) < 0.0 ) {
    specular = vec3(0.0, 0.0, 0.0);
    } 

    /* Part F: Darken when object is far from light source */
    float darken = 1/dot(Lvec, Lvec);

    // globalAmbient is independent of distance from the light source
    vec3 globalAmbient = vec3(0.01, 0.01, 0.01);
    color.rgb = globalAmbient  + darken * (ambient + diffuse + specular);
    color.a = 1.0;

    fColor = color * texture2D( texture, texCoord * 2.0 );
}
