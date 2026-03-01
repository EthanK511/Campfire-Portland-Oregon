draw_set_color(c_red);
draw_set_font(JetBrainsMono);
draw_text_transformed(60, 20, "Health: " + string(player_health), 1.0, 1.0, 0.0);

if (instance_exists(oNPChostile)) {
    draw_text_transformed(80, 60, "Boss Health: " + string(oNPChostile.boss_health), 1.0, 1.0, 0.0);
}
