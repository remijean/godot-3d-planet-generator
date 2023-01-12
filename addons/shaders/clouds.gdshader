// Based on: https://www.reddit.com/r/godot/comments/gxqsaj/comment/ft49hkn/?utm_source=share&utm_medium=web2x&context=3
shader_type spatial;

uniform sampler2D noise_texture;
uniform bool soft = false;
uniform float speed : hint_range(0.0, 1.0) = 0.005;
uniform float brightness : hint_range(0.0, 2.0) = 0.5;
uniform float threshold : hint_range(0.0, 2.0) = 1.2;
uniform float fluffiness : hint_range(0.0, 2.0) = 0.1;

void fragment() {
	vec4 noise_1 = texture(noise_texture, mod(UV + TIME * 2.5 * speed / 10.0, 0.0));
	vec4 noise_2 = texture(noise_texture, mod(UV + TIME * (2.5 + fluffiness * 3.0) * speed / 10.0, 0.0));
	vec4 combined_noise = noise_1 + noise_2;
	
	if (soft == true) {
		combined_noise.a = combined_noise.r;
		ALBEDO = smoothstep(threshold - 0.3, threshold + 0.3, combined_noise).rgb * brightness;
		ALPHA = smoothstep(threshold - 0.3, threshold + 0.3, combined_noise).a;
	}
	else {
		ALBEDO = combined_noise.rgb * brightness;
		if (combined_noise.r < threshold) {
			ALPHA = 0.0;
		}
		else {
			ALPHA = 1.0;
		}
	}
}