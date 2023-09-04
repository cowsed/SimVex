#version 330

layout (location = 0) in vec3 v_vert;
layout (location = 1) in vec3 v_normal;
layout (location = 2) in vec2 v_uv;

out vec3 f_pos;
out vec3 f_normal;
out vec2 f_uv;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;


void main(void)
{
    mat4 MVP = proj * view * model ;
    gl_Position = MVP * vec4(v_vert, 1.0);

    f_pos = (model * vec4(v_vert, 0.0)).xyz;
    f_normal = (model * vec4(v_normal, 1.0)).xyz;
    f_uv = v_uv+0.0001;
}
