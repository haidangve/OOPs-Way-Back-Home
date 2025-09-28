shader_type canvas_item;

uniform float brightness : hint_range(0.0, 2.0) = 1.0;
uniform vec4 tint : hint_color = vec4(1.0, 1.0, 1.0, 1.0);  // Default to white (Day mode)

void fragment() {
    vec4 texColor = texture(TEXTURE, FRAGCOORD.xy / SCREEN_PIXEL_SIZE);
    COLOR = texColor * brightness * tint;  // Apply brightness and tint for light mode
}