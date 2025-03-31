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


