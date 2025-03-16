// Adjust the cordinates to make it easier to center the text box.
var xCentered = x - (widthFull/2);
var yCentered = y - (heightFull/2);


// Draw our box sprite (nine sliced)
draw_sprite_stretched(spr_menuBox,0,xCentered-margin,yCentered-margin,widthFull,heightFull)

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


// Loop through the options, draw them.
for(var l = 0; l < (optionsCount + _desc); l++){
	draw_set_colour(normalTextColor);
	
	if(l == 0) && (_desc){
		draw_text(x-(widthFull/2),y-(heightFull/2),description);
	} else{
		var _str = options[l-_desc][0]
		
		if(hover == l - _desc){
			draw_set_colour(highlightedTextColor);
			_str = hovermarker + _str;
		}
		
		draw_text(x-(widthFull/2),y-(heightFull/2) + l * heightLine, _str);
	}

}