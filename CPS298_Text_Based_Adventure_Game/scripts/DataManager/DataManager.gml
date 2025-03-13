function loadDialogData(fileName){
	var file_buffer = buffer_load(fileName);
	var scriptText = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);

	global.scriptJSON = json_parse(scriptText).gameScript;
}