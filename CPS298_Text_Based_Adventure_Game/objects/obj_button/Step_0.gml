// Check if mouse is over the button
if (point_in_rectangle(mouse_x, mouse_y, 
                      x - (sprite_width/2 * image_xscale), 
                      y - (sprite_height/2 * image_yscale),
                      x + (sprite_width/2 * image_xscale), 
                      y + (sprite_height/2 * image_yscale))) {
    hover = true;
    text_color = hover_color;
    // Play hover sound if we just started hovering
    if (text_color != hover_color) {
        playSound(snd_menuUp, 1);
    }
} else {
    hover = false;
    text_color = original_color;
}
