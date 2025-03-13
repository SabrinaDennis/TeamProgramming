draw_self();
draw_set_color(c_black);
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(0,0,mainName);
draw_set_font(font_small);
draw_text_ext(room_width*0.5, room_height*0.2, (mainText), string_height(mainText), room_width/2-5);
