draw_set_colour(c_white);
draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


draw_sprite(sprite,0,x,y)
draw_text(x,y-(sprite.sprite_height/2) - 20,global.enemy.name)
draw_text(x,y-(sprite.sprite_height/2),"Health: " +string(global.enemy.health))