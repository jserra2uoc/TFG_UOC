/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



//--------------------- CHECK IF THE PLAYER IS IN SHOOTABLE RANGE -----------------

if (x > obj_player.x){
	if (distance_to_object(obj_player) <= shoot_distance){
		shooting = 1;
	}
	else{
		shooting = 0;
	}
}
else{
	shooting = 0;
}


//---------------------- SHOOT ----------------------------------
if (shooting && time_count >= shoot_time_delay && !defeated){
	with(instance_create_layer(x,y,"Bullets", obj_enemy_bullet)){
		speed = 5;    // bullet instance speed
		
		if (sign(other.image_xscale) == 1){
			x = other.x - 15;
			direction = 180;    // bullet direction ( left:180, right: 0 )
		}
		
	}
	sprite_index=spr_machinegun_shoot;

	time_count=0;
}
else if (!defeated){
	time_count++;
	sprite_index=spr_machinegun_idle;
}


if(defeated){
	if (image_index >= image_number - 1){
		instance_destroy();
	}

}
	




