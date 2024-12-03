
//-------------- CONTROLS INPUT ---------------------------------------------------------

// Keyboard controls
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

if (key_left) || (key_right) || (key_jump){

	controller = 0;	
}

// Gamepad controls
if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller = 1;
}

if (gamepad_button_check_pressed(0, gp_face1)){
	key_jump = 1;
	controller = 1;
}






//-------------- CHECK IF PLAYER IS ON GROUND --------------------------------------------

var _on_ground = place_meeting(x, y+1, obj_solid);






//-------------- CALCULATE MOVEMENT VALUES: -----------------------------------------------

// HORIZONTAL
// Horizontal direction sign (right: positive), (left: negative)
var _move = key_right - key_left;

// Horizontal value
if (_on_ground){
	h_speed = _move * run_speed;
}
else{
	h_speed = _move * run_speed * 1.5;
}



// VERTICAL
// vertical value
v_speed = v_speed + gravity_speed;






//-------------- JUMP MOVEMENT ------------------------------------------------------------

if (_on_ground && key_jump){	
	v_speed = -6;
}






//-------------- COLLISIONS -------------------------------------------------------------------

//Horizontal Collision
if (place_meeting(x + h_speed, y, obj_solid)){
	while (!place_meeting(x + sign(h_speed), y, obj_solid)){
		x = x + sign(h_speed);
	}
	h_speed = 0;
}

x = x + h_speed;    //apply horizontal movement



//Vertical Collision
if place_meeting(x, y + v_speed, obj_solid){
	while (!place_meeting(x, y + sign(v_speed), obj_solid)){
		y = y + sign(v_speed);
	}
	v_speed = 0;
}

y = y + v_speed;    //apply vertical movement






// -------------- SHOT ATTACK ----------------------------------------------------------------

if (gamepad_button_check_pressed(0,gp_face3) || keyboard_check_pressed(ord("X"))){
	
	with (instance_create_layer(x+2,y-3,"Bullets",obj_bullet)){	
		speed = 5;    // bullet instance speed
		
		if (sign(other.image_xscale) == -1){
			x = other.x - 15;
			direction = 180;    // bullet direction ( left:180, right: 0 )
		}
	}
}






//--------------- DAMAGE -------------------------------------------------------------

// OUT OF BOUNDS DEAD
if (y > room_height){
	room_restart();
}

if place_meeting(x, y, obj_spikes){
	room_restart();
}





//-------------- SPRITE GRAPHICS & ANIMATIONS ----------------------------------------------------


// ON THE AIR:
if (!_on_ground){
	sprite_index = spr_player_jump;
	image_speed = 0;
	
	if (sign(v_speed > 0)){    // while falling v_speed is positive
		image_index = 1;    // load sprite falling	
	}
	else{
		image_index = 0;    // load sprite jumping
	}
	
}



// ON THE GROUND:
else{
	image_speed = 1;
	if (h_speed == 0){
		sprite_index = spr_player_idle;
	}
	else{
		sprite_index = spr_player_run;
	}
}
	
if (h_speed != 0 ){
	image_xscale = sign(h_speed);
}







//-------------- CHECK LEVEL COMPLETE --------------------------------------------------------------

if (place_meeting(x, y, obj_flag_toMenu)) {
    room_goto(rm_menu);
	
	/*if (room != rm_room2) {
        room_goto_next();
    } else {
        game_end();
    }*/
}

