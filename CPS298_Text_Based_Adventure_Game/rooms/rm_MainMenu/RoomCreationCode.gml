// Initialize logging system
global.warnings=array_create(0);
init_logging();

// For all variables that need to be initialized prior to instances being created.
InitVariables()

// Set up the main menu room
createBackground(theater_past);
menuMusic();

//playerDeath(["You've died!"])
