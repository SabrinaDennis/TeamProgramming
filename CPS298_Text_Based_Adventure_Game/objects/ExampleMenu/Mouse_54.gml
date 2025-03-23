Menu(
			 // The menu cordinates are the center point vertically/horizontally of the menu box
	mouse_x, // X position this box will spawn at
	mouse_y, // y position this box will spawn at 
		[	 // Array of Arrays
			 //Option text,  Function reference    parameter array...
			["Add Numbers",  addButBetter,          [5,10]],
			["Add Numbers 2",addButBetter,          [7,42]],
			["Option B",         -1,                  -1],
			["Option C",         -1,                  -1]
		],
		// Optional Description, but you should likely just use this if theres dialog.
			"Choose your destiny...",
			true // Do you want this box centered on the provided x/y position? true/false
);
			