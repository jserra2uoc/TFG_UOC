/// @description Inserte aquí la descripción
// Puede escribir su código en este editor





if place_meeting(x,y-1, obj_player){
	start_moving = 1;
}

if (start_moving){
	if place_meeting(x,y-1, obj_player){
		obj_player.y += v_speed * v_direction;
	}
	y += v_speed * v_direction;
	
}




/*

if place_meeting(x, y-2, obj_player){
	moving = 1;
}
*/
