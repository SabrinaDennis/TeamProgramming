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
	var scene = global.dialogJSON.scenes[global.currentIndex];
	var sceneName = scene.sceneName;
	var sceneText = scene.sceneText;

	show_debug_message(sceneName);
	var choices = scene.options;
	createBackground(spr_background);
	
	Menu(200,200,scene.options)
	//for(var i=0; i<array_length(choices); i++){
	//	instance_create_depth(.3*room_width,.3*room_height+128*i,0, obj_button, {button_choice:i, choiceText:choices[i].choiceText, choiceTarget:choices[i].choiceTarget, choiceFunc:choices[i].choiceFunc, choiceFuncParameters:choices[i].choiceFuncParameters});
	//}
	instance_create_depth(.28*room_width, .1*room_height, 1, MainText, {mainName:sceneName, mainText:sceneText});
}