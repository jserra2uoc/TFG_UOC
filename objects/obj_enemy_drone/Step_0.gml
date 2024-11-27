/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event

var _min_distance = 100; 
var _target = instance_nearest(x, y, obj_player);

if(_target != noone){
	direction = point_direction(x,y, _target.x,y);
	
	var _distance = point_distance(x, y, _target.x, _target.y);
	
	if (_distance > _min_distance){
		x += lengthdir_x(speed, direction);
	}
	
	
}