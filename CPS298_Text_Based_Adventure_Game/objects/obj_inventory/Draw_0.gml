draw_set_colour(c_white);
draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Just testing, this probably wont be how this is displayed...
var temp_inventory = [];

for(i = 0; i < array_length(global.player.inventory); ++i) {
	array_push(temp_inventory,[global.player.inventory[i].name,-1,-1])
}

Menu(room_width/2,room_height/2,temp_inventory,"Inventory",true)
