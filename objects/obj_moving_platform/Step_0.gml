/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _h_movement = h_speed * h_direction;

x += _h_movement;

h_distance += h_speed * abs(h_direction);

if(h_distance >= h_limit && h_direction ==1){
	h_direction = -1;
	h_distance = 0;
}
else if (h_distance >= h_limit && h_direction ==-1){
	h_direction = 1;
	h_distance = 0;
}

//If player is up move player with the platform
if place_meeting(x, y-1, obj_player){
	obj_player.x += _h_movement;
}
