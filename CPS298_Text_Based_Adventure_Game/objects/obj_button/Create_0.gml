draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

image_yscale= string_height(choiceText)/sprite_height;
image_xscale= string_width(choiceText)/sprite_width;
draw_self();