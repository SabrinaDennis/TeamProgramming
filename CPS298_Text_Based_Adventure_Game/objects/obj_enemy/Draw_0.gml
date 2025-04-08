draw_set_colour(c_white);
draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw enemy
draw_sprite(sprite, 0, x, y);
draw_text(x, y-(sprite_get_height(sprite)/2) - 20, global.enemy.name);
draw_text(x, y-(sprite_get_height(sprite)/2), "Health: " + string(global.enemy.health));

// Draw player health at bottom of screen - add safety check
draw_set_halign(fa_left);
if (variable_global_exists("player") && variable_struct_exists(global.player, "health")) {
    draw_text(20, room_height - 40, "Your Health: " + string(global.player.health) + "/" + string(global.player.maxHealth));
} else {
    draw_text(20, room_height - 40, "Player not initialized");
}
