/// @function loadDialogData
/// @description Loads the dialog JSON file, and puts it into global.dialogJSON variable
/// @param {real} _fileName File name & Extension
function loadDialogData(_fileName){
	var file_buffer = buffer_load(_fileName);
	var dialogText = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);

	global.dialogJSON = json_parse(dialogText).gameScript;
}