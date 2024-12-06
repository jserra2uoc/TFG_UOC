/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(y == y_start && x == x_start){
	audio_stop_sound(snd_moving_platform);
}


if place_meeting(x,y-1, obj_player){
	start_moving = 1;
}

if (start_moving){
	if place_meeting(x,y-1, obj_player){
		obj_player.y += v_speed * v_direction;
	}
	if(!audio_is_playing(snd_moving_platform)){
		audio_play_sound(snd_moving_platform, 3, false);
	}
	y += v_speed * v_direction;
	
	
}




/*

if place_meeting(x, y-2, obj_player){
	moving = 1;
}
*/
