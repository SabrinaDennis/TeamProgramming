draw_set_colour(c_black);
draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw enemy
draw_self();
var _x=x;var  _y=y;

draw_text(_x, _y-sprite_get_height(sprite)-string_height(global.enemy.name), global.enemy.name);
draw_text(_x, _y-(sprite_get_height(sprite)), "Health: " + string(global.enemy.enemyHealth));


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


draw_set_color(c_red);

array_foreach(rects, function func(value, index){
	gpu_set_blendmode(bm_subtract)
//DRAW HERE
	draw_rectangle(value[0]-10+x,value[1]-10+y, value[0]+10+x, value[1]+10+y, false);
	gpu_set_blendmode(bm_normal);
	})