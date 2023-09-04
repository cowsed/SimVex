varying vec3 f_pos;
varying vec2 f_uv;
varying vec3 f_normal;

vec3 light_dir = normalize(vec3(.4,.4,.4));
void main(void)
{
    float amt = dot(f_normal, light_dir)/4.0 + .5;
    gl_FragColor = vec4(amt,amt,amt, 1.0);
}
