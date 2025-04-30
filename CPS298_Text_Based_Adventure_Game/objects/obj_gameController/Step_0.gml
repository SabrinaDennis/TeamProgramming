// Check for pause key
if (keyboard_check_pressed(vk_escape)) {
	
	show_debug_message("escape!");
	show_debug_message(instance_exists(obj_pauseMenu)?"menu exists!":"menu does not exist");
	show_debug_message((room == rm_MainMenu)?"we are in main=!":"e are not in main=");
	
	
	
    // Only create pause menu if it doesn't exist and we're not on the main menu	
    if (!instance_exists(obj_pauseMenu) && room != rm_MainMenu) {
        instance_create_depth(0, 0, -9999, obj_pauseMenu);
		show_debug_message("create called")
    }
	
	
}
