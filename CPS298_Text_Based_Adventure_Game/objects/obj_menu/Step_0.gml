if(global.enemy.enemyHealth<=0){



// If this is a pause menu, set the global variable to true
if(isPauseMenu == true){
	global.isPaused = true;
}

// If this isn't a pause menu, but we are paused, just return and dont do anything (so it sits idle while we're in the pause menu)
if(isPauseMenu == false && global.isPaused) {}//return;

var mouseOver = false;
var firstStep = true;

// Center things
 if(centered != false){
	xPosition = x - (widthFull/2);
	yPosition = y - (heightFull/2);
 }


if(isAnchored){
	xPosition = room_width - widthFull ;
	yPosition = global.textBoxHeight + margin;
}


// Is the mouse inside the boundaries
if (point_in_rectangle(mouse_x,mouse_y,xPosition,yPosition,xPosition+width,yPosition+height)){
	mouseOver = true;
}

// Which menu option is closest to the cursor if its also in the rectangle(above if statement)
if(mouseOver){ // Do not remove this, This makes it so the arrow keys work for selecting options...
	if(mxPrev != mouse_x) || (myPrev != mouse_y || firstStep){
		firstStep=false;
		var _mouseHoverLine = (mouse_y-yPosition) div (height/optionsCount); // div divides the numbers but only in whole numbers 9 / 10 = 0, 10/10 = 1, 15 / 10 = 1, 20 / 10 = 2
		//if !(description == -1) _mouseHoverLine -=1;
		if (_mouseHoverLine < 0) _mouseHoverLine = 0;
		if(_mouseHoverLine > optionsCount-1) _mouseHoverLine = optionsCount-1;
		hover = _mouseHoverLine;
	
		mxPrev = mouse_x;
		myPrev = mouse_y;
	}
}


// Go up / down index based on arrow up/down
hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

//Wrap around when going past either side of options
if (hover > optionsCount-1) hover = 0;
if (hover < 0) hover = optionsCount-1;



// Play Audio if key pressed
if(keyboard_check_pressed(vk_down)){
	audio_play_sound(snd_menuDown,0,false)
}

if(keyboard_check_pressed(vk_up)){
	audio_play_sound(snd_menuUp,0,false)
}



if(keyboard_check_pressed(vk_left)){
	// Is this a valid volume option
	// Do the change in volume
	switch(options[hover][1]){
		case adjustMusicVolume: 
			global.volume.music -= global.volume.adjustment;
			audio_emitter_gain(global.musicEmitter,global.volume.music);
			showSettings(0);
			break;
			
		case adjustSoundVolume:
			global.volume.sound -= global.volume.adjustment;
			// Audio emitter gain ( emitter , gain ) for sound
			showSettings(1);
			break;
	}
}

if(keyboard_check_pressed(vk_right)){
	// Raise Volume
	switch(options[hover][1]){
		case adjustMusicVolume: 
			global.volume.music += global.volume.adjustment;
			audio_emitter_gain(global.musicEmitter,global.volume.music);
			showSettings(0);
			break;
			
		case adjustSoundVolume:
			global.volume.sound += global.volume.adjustment;
			// Audio emitter gain ( emitter , gain ) for sound
			showSettings(1);
			break;
	}
}



// Function initialize to do nothing
var _func = function (){};
// Make the functions actually work, allow the player to activate an option
if((mouse_check_button_pressed(mb_left) && mouseOver) || keyboard_check_pressed(vk_enter)){
		audio_play_sound(snd_menuSelect,0,false)
		if(array_length(options[hover]) == 3){
			_func = options[hover][1];
			var _params = options[hover][2]
		
			// check for _func
			if(_func != -1){
				// check for parameters. if so, pass them.
				if(_params != -1){
					_func(_params);
				}else{
					_func();
				}	
				// Destroy menu instance, after option is picked, but only if option was not -1
				instance_destroy();
			}
		}
	
	if(isPauseMenu){
		global.isPaused = false;
	}
	
}

}