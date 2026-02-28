var padding = 8;
var height = 200;

var yPos = room_height - height;

draw_set_color(#3F3F3F);
draw_rectangle(0, yPos, room_width, room_height, false);
draw_set_color(#2F2F2F);
draw_rectangle(padding, yPos + padding, room_width - padding, room_height - padding, false);

var speaker = variable_instance_get(id, "Speaker") ?? "???";
var text = variable_instance_get(id, "Text") ?? "Lorem ipsum... (use your imagination lol)";

draw_set_font(JetBrainsMono);
draw_set_color(c_white);
draw_text_transformed(padding * 2, yPos + padding * 2, "> " + speaker + " <", 1.0, 1.0, 0.0);

draw_text_transformed(padding * 3, yPos + padding * 6, text, 1.0, 1.0, 0.0);
