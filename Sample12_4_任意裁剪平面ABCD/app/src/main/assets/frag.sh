#version 300 es
precision mediump float;
//接收从顶点着色器过来的参数
in vec4 ambient;
in vec4 diffuse;
in vec4 specular;
in float u_clipDist;

out vec4 fragColor;//输出到的片元颜色
void main()                         
{
// When you divide by zero, you get INF, not NaN.
// Unless the numerator is also zero, in which case you do get NaN.
//    if(u_clipDist < 0.0){
            //1.0/0.0=1.0
//        float var = 1.0/(u_clipDist-u_clipDist); // inf !!
//        if(isinf (var)){ // isnan  // isinf
//            fragColor = vec4(1.0,0.0,0.0,1.0);
//        }else{
//            fragColor = vec4(0.0,1.0,0.0,1.0);
//        }
//        return ;
//    }
	 if(u_clipDist < 0.0) discard; // hhl 增加discard

   //将计算出的颜色给此片元
   vec4 finalColor=vec4(0.95,0.95,0.95,1.0);   
   fragColor = finalColor*ambient+finalColor*specular+finalColor*diffuse;//给此片元颜色值
}   