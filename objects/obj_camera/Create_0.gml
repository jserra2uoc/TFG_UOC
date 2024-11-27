/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//get ID of camera
cam = view_camera[0];

follow = obj_player;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.65;
x_cam = xstart;
y_cam = ystart;
y_offset = 60;
x_offset = 20;
