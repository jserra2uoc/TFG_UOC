/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


y -= 0.25;

if keyboard_check_pressed(vk_anykey){
	room_goto(rm_level1_0);
}

if (y==-text_height-10){
	instance_destroy();
	room_goto(rm_level1_0);
}