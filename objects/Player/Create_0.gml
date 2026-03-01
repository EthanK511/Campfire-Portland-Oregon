global.move_speed = 5;
global.grav_speed = 1;
global.on_ground = false;

global.jump_force = 10;
global.Jump_multiply = 1;
global.jump_multiply_track = 0;

global.yvel = 0;
global.yvel_max = 15;

global.apex_threshold = 2;  
global.apex_grav_mult = 0.2;
global.fall_grav_mult = 2.0;
x_speed = 1; 
y_speed = 1; 
walk_speed = 1; 

is_attacking = false;
attack_frame_timer = 0;

idle_timer = 0;
player_health = 10;

// blinking
blinking = false;
blink_start = current_time;
blink_duration = 250;

/// @param {Real} amount
hurt = function(amount) {
	player_health -= amount;
	blinking = true;
	blink_start = current_time;
};
