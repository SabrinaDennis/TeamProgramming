show_debug_message("create code");

Menu(
    room_width/2,
    room_height/2,
    [
        ["Continue", instance_destroy, self],
        ["Save Game", createSaveMenu, [true,true]],
        ["Load Game", createSaveMenu, [false,true]],
        ["Options", showOptions, -1],
        ["Quit to Main Menu", quitToMainMenu, -1]
    ],
    "Game Paused",
    true,
	true
);
