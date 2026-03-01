boss_health = 10;
last_fired = current_time;
fire_time = 3000;

hurt = function() {
	boss_health -= 1;
};

die = function() {
	audio_stop_all();
	audio_play_sound(mus_BossEnd, 10, false, 1.0);
	instance_destroy();
};

fire = function() {
	last_fired = current_time;
    instance_create_layer(x, y, layer, bossesfireball);
};
