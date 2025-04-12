draw_self();
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
textBox(mainName, 20,20, -1,-1,false);
draw_set_font(font_small);
textBox(mainText, room_width*0.75, room_height*0.4);