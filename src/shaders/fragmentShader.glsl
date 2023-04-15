uniform vec3 uColor; // rgb
uniform sampler2D uTexture;

varying vec2 vUv;
varying float vElevation;

void main() {
   vec4 textureColor = texture2D(uTexture, vUv);
   // gl_FragColor = vec4(uColor, 1.0);
   // add shadow
   textureColor.rgb *= vElevation * 2.4 + 0.7;
   gl_FragColor = textureColor;
}
