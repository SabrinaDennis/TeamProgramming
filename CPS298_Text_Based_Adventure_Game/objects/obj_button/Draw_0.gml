// Draw the button with current color
draw_self();

// Set the text properties
draw_set_font(PressStart2P);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set text color based on hover state
draw_set_color(point_in_rectangle(mouse_x, mouse_y, x,y,sprite_width, sprite_height)?c_yellow:c_white);

// Draw the text with better line height and width constraints
draw_text_ext(x, y, self.choiceText, string_height_ext(choiceText, string_height(choiceText),  room_width * 0.3) * 1.2, room_width * 0.3);
