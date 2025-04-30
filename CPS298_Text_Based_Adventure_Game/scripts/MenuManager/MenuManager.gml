// Options data is an array of arrays
/*	[
		["Quick Save", QuickSave],
		["Save & Load", MenuSave],
		["Options", MenuOptions], 
		["Resume Game", -1], // -1 Means there's no function it should run.
	] 

This also means if we run one function, at the end of it we can populate another menu with multiple options,
thus how we can do dialog while making the gameplay adjustable
*/

// Our x & y positions are the center point of the menu


/// @function Menu
/// @description Creates a menu
/// @param {real} _x X position
/// @param {real} _y Y position
/// @param {array} _options Array of Arrays Including [String Option Text, Function Reference or -1, [Array of Function Parameters or -1]] 
/// @param {real} _description Title of the menu when it opens. (-1 for no text)
/// @param {Bool} _centered Do you want the X/Y to be the center of the menu? (True/False) 

function Menu(_x,_y,_options,_description = -1,_centered = false, _isPauseMenu = false, _hoverPosition = 0,_isAnchored = false){
	with(instance_create_depth(_x,_y,-999,obj_menu)){
		draw_set_color(c_white);
		draw_set_font(PressStart2P);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);

	
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hovermarker = "* ";
		centered = _centered;
		isPauseMenu = _isPauseMenu;
		hover = _hoverPosition;
		isAnchored = _isAnchored;
		
		// Border Margin around text for the sprite
		margin = 20; 

		width = 1;
		
		if(_description != -1) width = max(width,string_width(_description));
		var _extraLines = 0;
		
		for(var i=0; i < optionsCount; i++){
			// quick and dirty linewrap
			if(string_count("\n", _options[i][0])==0){
				if(string_width(_options[i][0])>room_width*.4){
					position = string_pos_ext(" ", _options[i][0], string_length(_options[i][0])/2-4)
					options[i][0] = string_insert("\n  ", _options[i][0], position);
					_extraLines++;
				}
			}
			else {
				_extraLines++
			}
			width = max(width, string_width(_options[i][0]));
		}
		
		width += string_width(hovermarker);
		heightLine = 20;
		height = heightLine * (optionsCount + _extraLines + !(description == -1));
		
		widthFull  = width  + margin * 2;
		heightFull = height + margin * 2;
		return self;
	}
}


// Pause Menu Related


// This is intended for the main menu, so the back function is different than the pause menu version.
function showSettings(_hoverPosition = 0) {
    instance_destroy();

	var musicVolumeText = "Music Volume: " + string(round(global.volume.music * 100)) + "%";
	var soundVolumeText = "Sound Volume: " + string(round(global.volume.sound * 100)) + "%";
	
    Menu(
        room_width/2,
        room_height/2,
        [
            [musicVolumeText, adjustMusicVolume, [0.01], false],
            [soundVolumeText, adjustSoundVolume, [0.01], false],
            ["Back", room_goto, rm_MainMenu]
        ],
        "Options",
        true,
		true,
		_hoverPosition
    );
}

// Function to show options menu
function showOptions() {
    instance_destroy();

	var musicVolumeText = "Music Volume: " + string(round(global.volume.music * 100)) + "%";
	var soundVolumeText = "Sound Volume: " + string(round(global.volume.sound * 100)) + "%";
	
    Menu(
        room_width/2,
        room_height/2,
        [
            [musicVolumeText, adjustMusicVolume, [0.01], false],
            [soundVolumeText, adjustSoundVolume, [0.01], false],
            ["Back", createPauseMenu, -1]
        ],
        "Options",
        true,
		true
    );
}

// Function to adjust music volume
function adjustMusicVolume() {} // Don't add to these, just using them to check for a reference

// Function to adjust sound volume
function adjustSoundVolume() {} // Don't add to these, just using them to check for a reference

// Function to create pause menu
function createPauseMenu() {
    instance_create_depth(0, 0, -9999, obj_pauseMenu);
}

// Function to quit to main menu
function quitToMainMenu() {
	audio_stop_all();
    room_goto(rm_MainMenu);
}

