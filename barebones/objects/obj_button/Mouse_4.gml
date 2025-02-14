draw_set_color(c_red);
draw_circle(room_width/2,room_height/2, 100.0, false);
global.currentIndex=choiceTarget;
show_debug_message(global.currentIndex);
room_restart();