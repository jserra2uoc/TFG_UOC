/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (obj_switch_one.switch_one == 1 && count < 128){
	count++;
	if(!audio_is_playing(snd_moving_bridge)){
		audio_play_sound(snd_moving_bridge, 3, false);
	}
	x = x + h_speed;
}
else{
	if(obj_switch_two.switch_two == 0){
		audio_stop_sound(snd_moving_bridge);
	}
}

/*	
if (obj_switch_one.switch_one == 1 && !place_meeting(x+70, y, obj_solid)){
	x = x + h_speed;
}
*/