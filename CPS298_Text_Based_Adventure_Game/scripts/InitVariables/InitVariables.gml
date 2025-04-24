// Game Volume
global.volume = {
	sound: .05,
	music: .05,
	adjustment: .01 // How much adjustment per left/right arrow key press
}

// Setting this for the menu x/y positions to work properly
global.game_width = 1366;
global.game_height = 768;

// Menu Placement for selectable menus
global.optionMenuX = game_width * 0.65;
global.optionMenuY = game_height * 0.75

// Used for pause menu logic (obj_pauseMenu)
global.isPaused = false;

// Used for logging system (LogManager)
global.warnings = array_create(0);
global.errors = [];