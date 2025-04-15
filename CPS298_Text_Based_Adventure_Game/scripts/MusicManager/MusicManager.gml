/// @description This function plays a song.
/// @function playSong
/// @param {array} _parameters Array with [Sound Reference, Priority=(0), loop=(true/false)]
function playSong(_parameters){
	// Song / Loop
	var song = _parameters[0] // Sound file
	var priority = _parameters[1] // Int, default 0
	var loop = _parameters[2] // true/false
	audio_play_sound(song,priority,loop)
}



// Global variables to store specific effect IDs
global.highpass_filter = undefined;
global.volume_effect = undefined;

/**
 * Applies elevator-style audio effects (high-pass filter and volume control) to a specified audio bus.
 * Stores references to the specific effects in global variables for future removal.
 * 
 * @function applyElevatorEffectsToBus
 * @param {string} [audioBusName="master"] - The name of the audio bus to apply effects to. Defaults to the "master" bus.
 * @param {number} [cutoffFrequency=200] - The cutoff frequency for the high-pass filter, in Hz. Defaults to 200 Hz.
 * @param {number} [volumeLevel=0.4] - The desired volume level for the audio bus. Defaults to 0.4 (40% of full volume).
 */
function applyElevatorEffectsToBus(audioBusName = "master", cutoffFrequency = 200, volumeLevel = 0.4) {
    var bus_id = audio_bus_get(audioBusName);
    
    if (bus_id != -1) {
        global.highpass_filter = audio_effect_create_filter(audio_filter_highpass);
        audio_effect_filter_set_parameters(global.highpass_filter, cutoffFrequency, 1.0);
        audio_bus_effect_attach(bus_id, global.highpass_filter);

        global.volume_effect = audio_effect_create_volume();
        audio_effect_volume_set(global.volume_effect, volumeLevel);
        audio_bus_effect_attach(bus_id, global.volume_effect);
    } else {
        show_error("Audio bus not found: " + string(audioBusName), true);
    }
}

/**
 * Removes the specific elevator-style audio effects (high-pass filter and volume control) from a specified audio bus.
 * Utilizes global variables to detach only the exact instances of the effects that were previously applied.
 * 
 * @function removeElevatorEffectsFromBus
 * @param {string} [audioBusName="master"] - The name of the audio bus to remove effects from. Defaults to the "master" bus.
 */
function removeElevatorEffectsFromBus(audioBusName = "master") {
    var bus_id = audio_bus_get(audioBusName);

    if (bus_id != -1) {
        // Detach the high-pass filter if it exists
        if (global.highpass_filter != undefined) {
            audio_bus_effect_detach(bus_id, global.highpass_filter);
            audio_effect_destroy(global.highpass_filter); // Clean up
            global.highpass_filter = undefined;
        }

        // Detach the volume effect if it exists
        if (global.volume_effect != undefined) {
            audio_bus_effect_detach(bus_id, global.volume_effect);
            audio_effect_destroy(global.volume_effect); // Clean up
            global.volume_effect = undefined;
        }
    } else {
        show_error("Audio bus not found: " + string(audioBusName), true);
    }
}