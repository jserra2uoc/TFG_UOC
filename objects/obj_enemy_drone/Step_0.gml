/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


var _min_distance = 0; 
var _target = instance_nearest(x, y, obj_player);

if(_target != noone){
	direction = point_direction(x,y, _target.x,y);
	
	var _distance = point_distance(x, y, _target.x, _target.y);
	
	if (_distance > _min_distance && _distance < 200){
		speed = 0.3
		x += lengthdir_x(speed, direction);
	}
	else{
		speed = 0;
	}
	
	
}

if (hp <=0){
	instance_destroy();
}


// ------------------ GRAPHICS & ANIMATION ---------------
sprite_index = spr_drone;