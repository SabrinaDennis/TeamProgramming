draw_self();
draw_set_color(c_black);
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(0,0,mainName,string_height(mainName)-7,room_width-5 );
draw_set_font(font_small);
draw_text_ext(room_width*0.5, room_height*0.2, (mainText), font_get_size(font_small)*1.2, room_width/2-5);
