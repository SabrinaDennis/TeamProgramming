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


function Menu(_x,_y,_options,_description = -1){
	with(instance_create_depth(_x,_y,-999,obj_menu)){
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hovermarker = "* ";
		
		// Set up size
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