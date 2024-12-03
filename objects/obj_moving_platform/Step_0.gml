/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _v_movement = v_speed * v_direction;

y += _v_movement;

v_distance += v_speed * abs(v_direction);

if(v_distance >= v_limit && v_direction ==1){
	v_direction = -1;
	v_distance = 0;
}
else if (v_distance >= v_limit && v_direction ==-1){
	v_direction = 1;
	v_distance = 0;
}

//If player is up move player with the platform
if place_meeting(x, y-1, obj_player){
	obj_player.x += _v_movement;
}
