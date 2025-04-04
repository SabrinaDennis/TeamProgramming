// Set the font and alignment
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Padding so the sprite nine slice stuff looks correct.
var padding = 1.2;
image_yscale= string_height(choiceText) / sprite_height + padding
image_xscale= string_width(choiceText) / sprite_width + padding

// Add hover effect variables
hover = false;
original_color = c_white;
hover_color = c_yellow;
text_color = original_color;

