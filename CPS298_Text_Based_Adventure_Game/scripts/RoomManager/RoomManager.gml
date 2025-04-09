/// @function destroyAllObjects
/// @description Destroys all objects in the room (Literally everything)
function destroyAllObjects(){
	with(all){ instance_destroy(); }
}

/// @function populateAllObjects
/// @description Populates the objects in the room (bg, buttons)
function populateAllObjects(){
	scene = global.dialog.scenes[global.currentIndex];
	var sceneName = scene.sceneName;
	var sceneText = scene.sceneText;
	var _background;
	try {
		_background = scene.background
	}
	catch(error){
			_background = house_past;
	}
	layer_background_change( global.background, _background);
	draw_set_font(font_small);
	Menu(200,200+string_height(sceneText)*1.5,scene.options);
	instance_create_depth(.28*room_width, .1*room_height, 1, MainText, {mainName:sceneName, mainText:sceneText});
}
	