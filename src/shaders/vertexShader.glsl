uniform vec2 uFrequency;
uniform float uTime;

varying vec2 vUv;
// add shadow
varying float vElevation;

void main() {
   vec4 modelPosition = modelMatrix * vec4(position, 1.0);

   // add x move
   float elevation = sin(modelPosition.x * uFrequency.x + uTime) * 0.1;
   // add y move
   elevation += sin(modelPosition.y * uFrequency.y + uTime) * 0.1;

   modelPosition.z += elevation;

   vec4 viewPosition = viewMatrix * modelPosition;
   vec4 projectionPosition = projectionMatrix * viewPosition;
   gl_Position = projectionPosition;
   // gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
   vUv = uv;

   vElevation = elevation;
} 