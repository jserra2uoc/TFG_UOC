/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (hp <= 0){
	defeated = 1;
}

//--------------------- CHECK IF THE PLAYER IS IN SHOOTABLE RANGE -----------------

if (!defeated){
	if (obj_player.x < x){
		
		if (distance_to_object(obj_player) <= shoot_distance){
			

			if (time_count >= shoot_time_delay){
				with(instance_create_layer(x,y, "Bullets", obj_enemy_bullet)){
				speed = 5;
				direction = 180;
				shooting = 1;
				time_count = 0;
				}
			}
			else{
				time_count++;
				shooting = 0;
			}
			
		}
		else{
			shooting = 0;
		}

	}
	else{
		sprite_index = spr_machinegun_idle;
	}
}

// if defeated
else{
	if (image_index == image_number -1){
		image_speed = 0;
		instance_destroy();
	}
	
}





	



//---------------------- SHOOT ----------------------------------
if (shooting && time_count >= shot_time_delay && !defeated){
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


show_debug_message(string(sprite_index));
show_debug_message(string(image_index));




