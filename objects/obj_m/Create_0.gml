/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

sprite_index = spr_machinegun_idle;

hp = 4;  // enemy hits before being defeaetd
defeated = 0; //  is the enemy defeated?

shooting = 0;  // is the enemy shooting?

time_count = 0;  //  counter for the next shoot (in frames)
shoot_time_delay = 60;  // time needed between shoots (in frames)
shoot_distance = 200;  //  enemy shooting range (in pixels)