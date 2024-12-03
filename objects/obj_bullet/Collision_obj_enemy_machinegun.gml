/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with (other){
	if (!defeated){
		if (hp > 0){
			hp--;
			// The obj_enemy shows its damaged sprite
			sprite_index=spr_machinegun_hit;
		}
		else{
			defeated = 1;
			sprite_index=spr_machinegun_defeated;
			image_speed=0.6;
		}
	}
	
}

instance_destroy();