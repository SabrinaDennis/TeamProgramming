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

function Menu(_x,_y,_options,_description = -1,_centered = false){
	with(instance_create_depth(_x,_y,-999,obj_menu)){
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hovermarker = "* ";
		centered = _centered;

		// Border Margin around text for the sprite
		margin = 8; 
		draw_set_font(PressStart2P);
		
		width = 1;
		if(_description != -1) width = max(width,string_width(_description));
		for(var i=0; i < optionsCount; i++){
			width = max(width, string_width(_options[i][0]));
		}
		
		width += string_width(hovermarker);
		heightLine = 20;
		height = heightLine * (optionsCount + !(description == -1));
		
		widthFull  = width  + margin * 2;
		heightFull = height + margin * 2;
	}
}