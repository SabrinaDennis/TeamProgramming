var mouseOver = false;

// Is the mouse inside the boundaries
if (point_in_rectangle(mouse_x,mouse_y,x,y,x+width,y+height)){
	mouseOver = true;
	// Which menu option is closest to the cursor if its also in the rectangle(above if statement)
	if(mxPrev != mouse_x) || (myPrev != mouse_y){
		var _mouseHoverLine = (mouse_y-y) div heightLine; // div divides the numbers but only in whole numbers 9 / 10 = 0, 10/10 = 1, 15 / 10 = 1, 20 / 10 = 2
		if !(description == -1) _mouseHoverLine -=1;
		if (_mouseHoverLine < 0) _mouseHoverLine = 0;
		if(_mouseHoverLine > optionsCount-1) _mouseHoverLine = optionsCount-1;
		hover = _mouseHoverLine;
	}
}

// Go up / down index based on arrow up/down
hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

//Wrap around when going past either side of options
if (hover > optionsCount-1) hover = 0;
if (hover < 0) hover = optionsCount-1;


// Make the functions actually work, allow the player to activate an option
if((mouse_check_button_pressed(mb_left) && mouseOver) || keyboard_check_pressed(vk_enter)){
	if(array_length(options[hover]) == 2){
		var _func = options[hover][1];
		if (_func != -1) _func();
	}
	instance_destroy();
}

mxPrev = mouse_x;
myPrev = mouse_y;