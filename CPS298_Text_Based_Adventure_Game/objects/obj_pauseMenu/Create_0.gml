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
    
	var musicVolumeText = "Music Volume: " + string(round(global.musicVolume * 100)) + "%";
	var soundVolumeText = "Sound Volume: " + string(round(global.soundVolume * 100)) + "%";
	
    Menu(
        room_width/2,
        room_height/2,
        [
            [musicVolumeText, adjustMusicVolume, [0.1]],
            [soundVolumeText, adjustSoundVolume, [0.1]],
            ["Back", createPauseMenu, -1]
        ],
        "Options",
        true
    );
}

// Function to adjust music volume
function adjustMusicVolume(_amount) {
	var amount = _amount[0];
    setMusicVolume(global.musicVolume + amount);
    showOptions();
}

// Function to adjust sound volume
function adjustSoundVolume(_amount) {
	var amount = _amount[0];
    setSoundVolume(global.soundVolume + amount);
    showOptions();
}

// Function to create pause menu
function createPauseMenu() {
    instance_create_depth(0, 0, -9999, obj_pauseMenu);
}

// Function to quit to main menu
function quitToMainMenu() {
	audio_stop_all();
    room_goto(rm_MainMenu);
}
