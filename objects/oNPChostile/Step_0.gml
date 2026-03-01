if (boss_health <= 0) {
    die();
} else {
    var fire_end = last_fired + fire_time;

    if (current_time > fire_end) {
        show_debug_message("FIRING");
        fire();
    }
}
