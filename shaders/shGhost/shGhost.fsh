//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.b += 0.5;
	gl_FragColor.g += 0.2;
	if(gl_FragColor.a != 0.0) {
		gl_FragColor.a = abs(1.0 - v_vTexcoord.y); 
	}
}

