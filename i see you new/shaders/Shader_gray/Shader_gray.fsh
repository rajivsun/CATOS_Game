//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()

{
	//get the original color of the pixel
	vec4 OC = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float average = (OC.r + OC.g + OC.b) / 3.0;
	
	gl_FragColor = OC;
	gl_FragColor.r = average;
	gl_FragColor.b = average;
	gl_FragColor.g = average;
	gl_FragColor.a = OC.a;

}

