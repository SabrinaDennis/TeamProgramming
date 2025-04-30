draw_set_colour(c_black);
draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw enemy

if(sprite!=spr_eldritch_horror){
draw_text(x+sprite_width*.5, y-string_height(global.enemy.name), global.enemy.name);
draw_text(x+sprite_width*.5, y, "Health: " + string(global.enemy.enemyHealth));
} else {
	draw_text(room_width*.5, room_height*.5-string_height(global.enemy.name), global.enemy.name);
	draw_text(room_width*.5, room_height*.5, "Health: " + string(global.enemy.enemyHealth));
}
draw_self();

// Draw player health at bottom of screen - add safety check
draw_set_halign(fa_left);
if (variable_global_exists("player") && variable_struct_exists(global.player, "health")) {
    textBox( "Your Health: " + string(global.player.health) + "/" + string(global.player.maxHealth), 20, room_height - 40, false);
	draw_set_color(c_gray);
	draw_roundrect(10, room_height-60, 30, (room_height-60-global.player.maxHealth*5) ,false);
	draw_set_color(c_red);
	draw_roundrect(10, room_height-60, 30, (room_height-60-global.player.health*5) ,false);
	
} else {
    draw_text(20, room_height - 40, "Player not initialized");
}

array_foreach(rects, function func(value, index){
	
draw_set_color(make_color_hsv(value[2],255,255));
	draw_roundrect(x+value[0]-20,y+value[1]-20,x+ value[0]+20, y+value[1]+20, false);
})