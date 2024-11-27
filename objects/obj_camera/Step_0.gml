/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Update destination
if (instance_exists(follow)){
	
	x_cam = follow.x;
	y_cam = follow.y;
}

//Update object position
x += (x_cam - x) / 10;
y += (y_cam - y) / 10;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);