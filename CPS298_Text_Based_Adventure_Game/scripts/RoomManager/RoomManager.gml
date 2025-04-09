/// @function destroyAllObjects
/// @description Destroys all objects in the room (Literally everything)
function destroyAllObjects(){
	with(all){ instance_destroy(); }
}

/// @function createBackground
/// @description Display background
/// @param {any} _bgSprite Background Sprite Reference
function createBackground(_bgSprite){
	global.backgroundLayer = layer_create(2);
	global.background = layer_background_create(global.backgroundLayer,_bgSprite);
}

/// @function populateAllObjects
/// @description Populates the objects in the room (bg, buttons)
function populateAllObjects(){
	var scene = global.dialog.scenes[global.currentIndex];
	var sceneName = scene.sceneName;
	var sceneText = scene.sceneText;

	show_debug_message(sceneName);
	createBackground(spr_background);
	draw_set_font(font_small);
	Menu(200,200+string_height(sceneText)*1.5,scene.options);
	instance_create_depth(.28*room_width, .1*room_height, 1, MainText, {mainName:sceneName, mainText:sceneText});
}