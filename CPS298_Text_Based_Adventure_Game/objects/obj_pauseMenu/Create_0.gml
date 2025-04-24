Menu(
    room_width/5,
    room_height/2,
    [
        ["Continue", instance_destroy, -1],
        ["Save Game", createSaveMenu, true],
        ["Load Game", createSaveMenu, false],
        ["Options", showOptions, -1],
        ["Quit to Main Menu", quitToMainMenu, -1]
    ],
    "Game Paused",
    true,
	true
);
