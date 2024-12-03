/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(counter >= shoot_time_delay){
	instance_create_layer(x+10,y,"Bullets",obj_canon_bullet_right);
	counter = 0;
}
else{
	counter++;
}