#include "colors.inc"
 #declare mov_camera=3*clock;


//Camara
camera{
 location <-2+mov_camera,-4+(2*mov_camera),-20+clock>
 look_at<0,0,0>

}              
// Lampara
light_source{
 <0,6+clock,-5+(2*clock)>
 White
} 

// Fondo 
background {White} 

//      Figuras
  //For para multiplicar la esfera en x
#for (Posicion_x,0,18,4.5)
	

// Esfera
sphere{
    <-6+Posicion_x,0,0>, 2                     // Localizacion
    
    pigment{ Red }
    finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }

}  

// Cilindro 
cylinder{
    <-6+Posicion_x, -8, 0>, <-6+Posicion_x, -1, 0>, .8      // Localizacion
    
    pigment{ color rgb< 0.0, 0.0, 1.0> }
    finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }
}   

sphere { 
   <-6+Posicion_x, -8, 0>, 1.5                // Localizacion
   
   //clipped_by { plane { <0, -1, 0>, 0.25 } }
   pigment{ color rgb< 0.0, 0.0, 1.0> }
   finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
    }   
}

#end //Para for en x  

//Plano 
  plane {
    y, -8
   	pigment{    image_map { jpeg "pasto.jpg"}  }
}		    

//Plano 
  plane {
    x, -10
    pigment{    image_map { jpeg "cielo.jpg"}  }
  }
  
 //Plano 
  plane {
    z, 10
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }                                                                 