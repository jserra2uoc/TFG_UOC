/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Bullet moving direction
var _dx = lengthdir_x(speed, direction);

x += _dx;

// Destroy bullet when out of bounds
if (x < 0 || x > room_width || y < 0 || y > room_height) {
	instance_destroy();
}