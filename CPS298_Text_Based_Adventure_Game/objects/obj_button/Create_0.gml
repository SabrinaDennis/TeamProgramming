draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Padding so the sprite nine slice stuff looks correct.
var padding = 1;
image_yscale= string_height(choiceText) / sprite_height + padding
image_xscale= string_width(choiceText) / sprite_width + padding
draw_self();