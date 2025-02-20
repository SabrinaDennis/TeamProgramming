var file_buffer = buffer_load("script.json");
var scriptText = buffer_read(file_buffer, buffer_string);
buffer_delete(file_buffer);

global.scriptJSON = json_parse(scriptText).gameScript;

global.currentIndex = 0;
room_goto_next();