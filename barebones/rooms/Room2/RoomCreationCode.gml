

//for(var i=0; i<array_length(listOfSceneParts); i++){
//	show_message(string_concat(string(i), ", ",listOfSceneParts[i],", ", global.scriptJSON.gameScript.scenes[0][$ listOfSceneParts[i]]));
//}

	var scene = global.scriptJSON.scenes[global.currentIndex];
	var sceneName = scene.sceneName;
	var sceneText = scene.sceneText;
	show_debug_message(sceneName);
	var background = scene.background;
	var character = scene.character;
	var choices = scene.choices;
	
	instance_create_depth(0,0,150,Background, {bgcolor:c_dkgray});
for(var i=0; i<array_length(choices); i++){
	instance_create_depth(.3*room_width,.3*room_height+128*i,0, obj_button, {button_choice:i, choiceText:choices[i].choiceText, choiceTarget:choices[i].choiceTarget});
}
instance_create_depth(.28*room_width, .1*room_height, 1, MainText, {mainName:sceneName, mainText:sceneText});
