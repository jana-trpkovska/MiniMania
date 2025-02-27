shader_type spatial;

uniform vec4 color = vec4(0.0, 1.0, 1.0, 0.3); // Default cyan color
uniform float glow_intensity = 2.0;

void fragment() {
    vec2 uv_centered = UV - vec2(0.5);
    float distance_from_center = length(uv_centered);
    float glow = smoothstep(0.3, 0.5, distance_from_center);
    ALBEDO = color.rgb * glow;
    EMISSION = color.rgb * glow_intensity;
}
