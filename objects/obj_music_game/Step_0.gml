/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




var _room_index = asset_get_index(room_get_name(room));
var _room_name = room_get_name(_room_index);

if keyboard_check_pressed(ord("Y")){
	audio_paused = !audio_paused;
}



if (!audio_paused){

	 if (_room_name == "rm_level1_0" || _room_name == "rm_level1_1"){
		
		if(audio_is_paused(snd_msc_level1_1)) audio_resume_sound(snd_msc_level1_1);
	
		if(!audio_is_playing(snd_msc_level1_1)){
			audio_play_sound(snd_msc_level1_1, 100, true);
			now_playing = snd_msc_level1_1;
		}
	}
	else if (_room_name == "rm_level1_2"){
		if(audio_is_playing(snd_msc_level1_1) || audio_is_paused(snd_msc_level1_1)) audio_stop_sound(snd_msc_level1_1);
		
		if(audio_is_paused(snd_msc_level1_2)) audio_resume_sound(snd_msc_level1_2);
	
		if(!audio_is_playing(snd_msc_level1_2)){
			audio_play_sound(snd_msc_level1_2, 100, true);
			now_playing = snd_msc_level1_2;
		}
	}

	else if (_room_name == "rm_level1_3"){
		if(audio_is_playing(snd_msc_level1_2) || audio_is_paused(snd_msc_level1_2)) audio_stop_sound(snd_msc_level1_2);
		
		if(audio_is_paused(snd_msc_level1_3)) audio_resume_sound(snd_msc_level1_3);
	
		if(!audio_is_playing(snd_msc_level1_3)){
			audio_play_sound(snd_msc_level1_3, 100, true);
			now_playing = snd_msc_level1_3;
		}
	}
	else if (_room_name == "rm_credits"){
		if (audio_is_playing(snd_msc_level1_3) || audio_is_paused(snd_msc_level1_3)) audio_stop_sound(snd_msc_level1_3);
	}
	else if(_room_name == "rm_menu"){
		audio_stop_sound(snd_msc_level1_1);
		audio_stop_sound(snd_msc_level1_2);
		audio_stop_sound(snd_msc_level1_3);
	}

}

else{
	audio_pause_sound(now_playing);
}


