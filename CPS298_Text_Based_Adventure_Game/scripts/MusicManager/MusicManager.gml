/// @description This function plays a song.
/// @function playSong
/// @param {array} _parameters Array with [Sound Reference, Priority=(0), loop=(true/false)]
function playSong(_parameters){
    // Song / Loop
    var song = _parameters[0] // Sound file
    var priority = _parameters[1] // Int, default 0
    var loop = _parameters[2] // true/false
    
    // Stop any currently playing music first
    if (audio_is_playing(global.currentMusic)) {
        audio_stop_sound(global.currentMusic);
    }
    
    // Play the new music and store the ID
    global.currentMusic = audio_play_sound(song, priority, loop);
    return global.currentMusic;
}

/// @function playSound
/// @description Plays a sound effect once
/// @param {any} sound Sound resource to play
/// @param {real} priority Priority of sound (default 1)
function playSound(sound, priority = 1) {
    audio_play_sound(sound, priority, false);
}

/// @function initMusicSystem
/// @description Initialize the music system variables
function initMusicSystem() {
    // Store the currently playing music ID
    global.currentMusic = -1;
    
    // Create music mappings for different scenes
    global.musicMap = {
        // Map scene names or types to music assets
        "mainMenu": snd_menuUp,  // Replace with actual music assets when available
        "battle": snd_menuDown,  // Replace with actual battle music
        "victory": snd_menuUp,   // Replace with victory fanfare
        "defaultMusic": snd_menuUp    // Default background music
    };
    
    // Sound effect volume (0.0 to 1.0)
    global.soundVolume = 1.0;
    // Music volume (0.0 to 1.0)
    global.musicVolume = 0.8;
}

/// @function setMusicVolume
/// @description Set the music volume
/// @param {real} volume Volume level (0.0 to 1.0)
function setMusicVolume(volume) {
    global.musicVolume = clamp(volume, 0, 1);
    if (global.currentMusic != -1 && audio_is_playing(global.currentMusic)) {
        audio_sound_gain(global.currentMusic, global.musicVolume, 0);
    }
}

/// @function setSoundVolume
/// @description Set the sound effects volume
/// @param {real} volume Volume level (0.0 to 1.0)
function setSoundVolume(volume) {
    global.soundVolume = clamp(volume, 0, 1);
}

/// @function playSceneMusic
/// @description Play music appropriate for the current scene
/// @param {string} sceneType Type of scene ("battle", "mainMenu", etc.)
function playSceneMusic(sceneType) {
    var musicToPlay;
    
    // Check if we have specific music for this scene type
    if (variable_struct_exists(global.musicMap, sceneType)) {
        musicToPlay = variable_struct_get(global.musicMap, sceneType);
    } else {
        // Fall back to default music
        musicToPlay = global.musicMap.defaultMusic;
    }
    
    // Play the music
    playSong([musicToPlay, 10, true]);
}
