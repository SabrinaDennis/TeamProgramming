// Initialize the music system
initMusicSystem();

// Play main menu music
playSceneMusic("mainMenu");

// Create the background
createBackground(spr_background);

// Create persistent controller if it doesn't exist
if (!instance_exists(obj_gameController)) {
    instance_create_depth(0, 0, 0, obj_gameController);
}
