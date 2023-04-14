uniform vec2 uFrequency;

void main() {
   vec4 modelPosition = modelMatrix * vec4(position, 1.0);

   modelPosition.z += sin(modelPosition.x * uFrequency.x) * 0.1;
   modelPosition.z += sin(modelPosition.y * uFrequency.y) * 0.1;

   vec4 viewPosition = viewMatrix * modelPosition;
   vec4 projectionPosition = projectionMatrix * viewPosition;
   gl_Position = projectionPosition;
   // gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
} 