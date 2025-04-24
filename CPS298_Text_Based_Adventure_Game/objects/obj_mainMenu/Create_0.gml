Menu(
	room_width/2,
	room_height/2,
	[
		 // option        function ref     parameters
		["New Game",    room_goto_next,  -1],
		["Load Game", createSaveMenu, false],
        ["Settings", showOptions, -1],
	],
	"Text Adventures of Argathon",
	true // Centered or not 
)

