// Check for pause key
if (keyboard_check_pressed(vk_escape)) {
    // Only create pause menu if it doesn't exist and we're not on the main menu
    if (!instance_exists(obj_pauseMenu) && room != rm_MainMenu) {
        instance_create_depth(0, 0, -9999, obj_pauseMenu);
    }
}
