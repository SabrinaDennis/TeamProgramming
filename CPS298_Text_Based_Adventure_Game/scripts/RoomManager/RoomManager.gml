function destroyAllObjects(){
	with(all){ instance_destroy(); }
}

function createBackground(bgSprite){
	global.backgroundLayer = layer_create(2);
	global.background = layer_background_create(global.backgroundLayer,bgSprite);
}


function populateAllObjects(){
	var scene = global.dialogJSON.scenes[global.currentIndex];
	var sceneName = scene.sceneName;
	var sceneText = scene.sceneText;

	show_debug_message(sceneName);
	var choices = scene.choices;
	createBackground(spr_background);
	for(var i=0; i<array_length(choices); i++){
		instance_create_depth(.3*room_width,.3*room_height+128*i,0, obj_button, {button_choice:i, choiceText:choices[i].choiceText, choiceTarget:choices[i].choiceTarget, choiceFunc:choices[i].choiceFunc, choiceFuncParameters:choices[i].choiceFuncParameters});
	}
	instance_create_depth(.28*room_width, .1*room_height, 1, MainText, {mainName:sceneName, mainText:sceneText});
}