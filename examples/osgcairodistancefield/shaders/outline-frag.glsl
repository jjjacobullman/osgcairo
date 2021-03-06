varying vec2 sampleCoord;

uniform sampler2D Texture;
uniform vec4      Color;
uniform vec4      StyleColor;
uniform float     AlphaMin;
uniform float     AlphaMax;
uniform float     OutlineAlphaMax0;
uniform float     OutlineAlphaMax1;

void main() {
	float a = texture2D(Texture, sampleCoord).a;

	gl_FragColor =
		mix(StyleColor, Color, smoothstep(AlphaMin, AlphaMax, a)) *
		smoothstep(OutlineAlphaMax0, OutlineAlphaMax1, a)
	;
}

