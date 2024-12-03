/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Bullet moving direction
var _dx = lengthdir_x(speed, direction);

x += _dx;

// Destroy bullet when out of bounds of the screen
if (x < 0 || x > (window_get_width() + 320)) {  // offset of 320
	instance_destroy();
}