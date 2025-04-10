Menu(
    room_width/2,
    room_height/2,
    [
        ["Continue", instance_destroy, -1],
        ["Save Game", createSaveMenu, true],
        ["Load Game", createSaveMenu, false],
        ["Options", showOptions, -1],
        ["Quit to Main Menu", quitToMainMenu, -1]
    ],
    "Game Paused",
    true
);

// Function to show options menu
function showOptions() {
    instance_destroy();
    
    Menu(
        room_width/2,
        room_height/2,
        [
            ["Music Volume: " + string(round(global.musicVolume * 100)) + "%", adjustMusicVolume, 0.1],
            ["Sound Volume: " + string(round(global.soundVolume * 100)) + "%", adjustSoundVolume, 0.1],
            ["Back", createPauseMenu, -1]
        ],
        "Options",
        true
    );
}

// Function to adjust music volume
function adjustMusicVolume(amount) {
    setMusicVolume(global.musicVolume + amount);
    showOptions();
}

// Function to adjust sound volume
function adjustSoundVolume(amount) {
    setSoundVolume(global.soundVolume + amount);
    showOptions();
}

// Function to create pause menu
function createPauseMenu() {
    instance_create_depth(0, 0, -9999, obj_pauseMenu);
}

// Function to quit to main menu
function quitToMainMenu() {
    room_goto(rm_MainMenu);
}
