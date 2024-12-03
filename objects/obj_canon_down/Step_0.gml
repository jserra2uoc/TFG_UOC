/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(counter >= shoot_time_delay){
	instance_create_layer(x,y +10,"Bullets",obj_canon_bullet_down);
	counter = 0;
}
else{
	counter++;
}