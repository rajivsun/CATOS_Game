//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main()
{
	vec4 newcolor = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
	
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	if (texture2D(gm_BaseTexture,v_vTexcoord).a <= 0.0){
		
		float alpha = 0.0;
	
		alpha += ceil(texture2D( gm_BaseTexture,v_vTexcoord + offsetx).a);
		alpha += ceil(texture2D( gm_BaseTexture,v_vTexcoord - offsetx).a);	
		alpha += ceil(texture2D( gm_BaseTexture,v_vTexcoord + offsety).a);	
		alpha += ceil(texture2D( gm_BaseTexture,v_vTexcoord - offsety).a);
		if ( alpha > 0.0){
			newcolor = vec4(1.0);
		}
		
	}
	
	
    gl_FragColor = newcolor;	
	//gl_FragColor.a = alpha;
}
