// Adjust the cordinates to make it easier to center the text box.
if(centered != false){
	xPosition = x - (widthFull/2);
	yPosition = y - (heightFull/2);
}

if(isAnchored){
	xPosition = room_width - widthFull ;
	yPosition = global.textBoxHeight + margin;
}

// Draw our box sprite (nine sliced)
draw_sprite_stretched(spr_menuBox,0,xPosition-margin,yPosition-margin,widthFull,heightFull)

// Text Colors
var highlightedTextColor = c_yellow;
var normalTextColor = c_white;


// Text Setup
draw_set_colour(normalTextColor);
draw_set_font(PressStart2P);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Is there a description
var _desc = !(description == -1);


var _extraLines = 0
// Loop through the options, draw them.

for(var l = 0; l < (optionsCount + _desc); l++){
	draw_set_colour(normalTextColor);
	
	if(l == 0) && (_desc){
		//draw_text_ext(xPosition,yPosition,description,10,500);
		draw_text(xPosition,yPosition,description);
	} else{
		var _str = options[l-_desc][0]
		
		if(hover == l - _desc){
			draw_set_colour(highlightedTextColor);
			_str = hovermarker + _str;
			_str = string_replace_all(_str, "\n", "\n ");
		}
		
		draw_text(xPosition,yPosition + (l+_extraLines) * heightLine, _str);
		_extraLines += string_count("\n", _str);
	}
	
	
}