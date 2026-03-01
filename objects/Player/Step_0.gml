var xvel = 0;
var oy = y;

if (keyboard_check_pressed(vk_escape)) {
    room_goto(Title);
}

var jump_key_down = AnyKeyPressed(global.key_move_up);
var jump_just_pressed = jump_key_down;

if (jump_just_pressed) {
    if (global.on_ground) {
        global.yvel = -global.jump_force;
        global.jump_multiply_track = 1;
    } else if (global.jump_multiply_track < global.Jump_multiply) {
        global.yvel = -global.jump_force;
        global.jump_multiply_track++;
    }
}

if (AnyKeyPressed(global.key_move_right)) {
    xvel += global.move_speed;
    image_xscale = -1;
} else if (AnyKeyPressed(global.key_move_left)) {
    xvel -= global.move_speed;
    image_xscale = 1;
}

if (!global.on_ground) {
    var grav_mult;

    if (abs(global.yvel) < global.apex_threshold) {
        grav_mult = global.apex_grav_mult;
    } else if (global.yvel > 0) {
        grav_mult = global.fall_grav_mult;
    } else {
        grav_mult = 1.0;
    }

    global.yvel += global.grav_speed * grav_mult;
} else {
    global.yvel += global.grav_speed * global.fall_grav_mult;
}

global.yvel = clamp(global.yvel, -global.jump_force, global.yvel_max);

move_and_collide(xvel, global.yvel, [Solid]);

if (y == oy) {
    global.on_ground = true;
    global.yvel = 0;
} else {
    global.on_ground = false;
}

if (global.on_ground) {
    global.jump_multiply_track = 0;
}

if (mouse_check_button_pressed(mb_left) && !is_attacking) {
    is_attacking = true;
    attack_frame_timer = 0;
    image_index = 3;
    image_speed = 0;
}

if (is_attacking) {
    attack_frame_timer++;
    var frame_duration = 8;

    if (attack_frame_timer >= frame_duration) {
        attack_frame_timer = 0;
        image_index++;

        if (image_index > 5) {
            is_attacking = false;
            image_speed = 0;
            image_index = 0;
        }
    }
}

if (!is_attacking) {
    image_speed = 0;

    if (!global.on_ground) {
        if (image_index != 2 && image_index != 3) {
            image_index = 2;
        }
    } else {
        if (image_index != 0 && image_index != 1) {
            image_index = 0;
        }

        idle_timer++;
        if (idle_timer >= 15) {
            idle_timer = 0;
            if (image_index == 0) {
                image_index = 1;
            } else {
                image_index = 0;
            }
        }
    }
}