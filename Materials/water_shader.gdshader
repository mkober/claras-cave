shader_type spatial;

// Change the values to another decimal to change the height and speed of the wave
const float wave_height = 0.2;
const float wave_speed = 0.4;

uniform sampler2D wave_pattern;
uniform vec4 color = vec4(0.19, 0.71, 0.82, 0.44);

void vertex(){
	float time = TIME * wave_speed; 
	vec4 wave = texture(wave_pattern, UV);
	float displacement = sin(VERTEX.x * wave.x * time) + cos(VERTEX.z * wave.z *  time);
	
	VERTEX.y += displacement * wave_height;
}

void fragment(){
	ALBEDO = color.rgb;
	ALPHA = color.a;
}