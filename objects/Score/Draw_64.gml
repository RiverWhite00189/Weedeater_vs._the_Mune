draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text(32,32, "Score: ");
var _str = string(score);
draw_set_color(c_black);
draw_text_transformed(32, 48, _str, 2, 2, 0);