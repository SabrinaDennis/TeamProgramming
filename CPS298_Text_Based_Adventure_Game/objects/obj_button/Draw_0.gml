// Draw the button with current color
draw_self();

// Set the text properties
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set text color based on hover state
draw_set_color(text_color);

// Draw the text with line height and width constraints
draw_text_ext(x, y, choiceText, string_height(choiceText) * 1.2, room_width * 0.3);
