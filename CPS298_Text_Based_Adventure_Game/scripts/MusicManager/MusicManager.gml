/// @description This function plays a song.
/// @function playSong
/// @param {array} _parameters Array with [Asset.GMSound, Priority=(0), loop=(true/false)]
function playSong(_parameters){
	var priority, song, loop;
	// Song / Loop
	 song = _parameters[0] // Sound file
	if(array_length(_parameters)>1){
		priority = _parameters[1];
	} else { // Int, default 0
		priority=0;
	}
		
	if(array_length(_parameters)>2){
		loop=_parameters[2];
	} else {
		loop=true;
	}
	loop = _parameters[2] // true/false
	audio_stop_all();
	audio_play_sound_on(global.musicEmitter, song, loop,priority,global.volume.music);
}

/// @description begins music on the menu, and initializes background audio bus.
/// @function mainMenuMusic
function mainMenuMusic(){
	audio_stop_all()
	global.musicBus = audio_bus_create();
	global.musicEmitter = audio_emitter_create();
	audio_emitter_bus(global.musicEmitter, global.musicBus);
	audio_play_sound_on(global.musicEmitter, snd_menuMusic1, true,10,global.volume.music);
}

// Global variables to store specific effect IDs
global.highpass_filter = undefined;
global.volume_effect = undefined;

/**
 * Applies elevator-style audio effects (high-pass filter and volume control) to a specified audio bus.
 * Stores references to the specific effects in global variables for future removal.
 * 
 * @function applyElevatorEffectsToBus
 * @param {struct.AudioBus} [audioBus=audio_bus_main] - The name of the audio bus to apply effects to. Defaults to the "master" bus.
 * @param {real} [cutoffFrequency=5000] - The cutoff frequency for the high-pass filter, in Hz. Defaults to 200 Hz.
 * @param {real} [volumeLevel=0.4] - The desired volume level for the audio bus. Defaults to 0.4 (40% of full volume).
 */
function applyElevatorEffectsToBus(audioBus = audio_bus_main, cutoffFrequency = 2000, volumeLevel = 0.2) {
    if (is_struct(audioBus)) {
        var filter = audio_effect_create(AudioEffectType.LPF2);
		filter.cutoff=cutoffFrequency;
        audioBus.effects[0]=filter;
		filter = audio_effect_create(AudioEffectType.HPF2);
		filter.cutoff=1500.0;
		audioBus.effects[1]=filter;
		global.volume_effect = audio_bus_main.gain;
        audioBus.gain=volumeLevel;
    } else {
        show_error("Audio bus not found: " + string(audioBus), true);
    }
}

/**
 * Removes the specific elevator-style audio effects (high-pass filter and volume control) from a specified audio bus.
 * Utilizes global variables to detach only the exact instances of the effects that were previously applied.
 * 
 * @function removeElevatorEffectsFromBus
 * @param {struct.AudioBus} [audioBus=audio_bus_main] - The name of the audio bus to remove effects from. Defaults to the "master" bus.
 */
function removeElevatorEffectsFromBus(audioBus = audio_bus_main) {
    if (is_struct(audioBus)){
        // Detach the high-pass filter if it exists
        if (is_array(audioBus.effects)){
			audioBus.effects[0].bypass=true;
			audioBus.effects[1].bypass=true;
		}
        // Detach the volume effect if it exists
        if (global.volume_effect != undefined) {
            audioBus.gain = global.volume_effect;
        }
    } else {
        show_error("Audio bus not found: " + string(audioBus), true);
    }
}