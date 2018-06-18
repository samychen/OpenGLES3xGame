#version 300 es
precision mediump float;
in vec2 vTextureCoord; //接收从顶点着色器过来的参数
uniform sampler2D sTexture;//纹理内容数据
out vec4 fragColor;//输出到的片元颜色
void main()                         
{           
   // 可视化深度
   fragColor = vec4(vec3(gl_FragCoord.z), 1 );
}              