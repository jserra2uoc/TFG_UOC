/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var _target = instance_nearest(x, y, obj_player);

if(_target != noone){
	direction = point_direction(x,y, _target.x,y);
	
	x += lengthdir_x(speed, direction);
	
}

if (hp <=0){
	instance_destroy();
}