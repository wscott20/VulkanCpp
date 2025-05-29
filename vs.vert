#version 450

layout(location = 0) out vec3 fragColor;

vec2 positions[3];

vec3 colors[3];

void main() {
    int j=0;
    for (int i=0; i<360; i+=120) {
        float angle = radians(i);
        float x = cos(angle) / 2.0;
        float y = sin(angle) / 2.0;
        positions[j] = vec2(x,y);
        j++;
    }
    colors[0] = vec3(1.0, 0.0, 0.0);
    colors[1] = vec3(0.0, 1.0, 0.0);
    colors[2] = vec3(0.0, 0.0, 1.0);
    gl_Position = vec4(positions[gl_VertexIndex], 0.0, 1.0);
    fragColor = colors[gl_VertexIndex];
}