function loadDialogData(fileName){
	var file_buffer = buffer_load(fileName);
	var dialogText = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);

	global.dialogJSON = json_parse(dialogText).gameScript;
}