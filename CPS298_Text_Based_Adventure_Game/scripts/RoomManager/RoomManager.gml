/// @function destroyAllObjects
/// @description Destroys all objects in the room (Literally everything)
function destroyAllObjects(){
	with(all){ instance_destroy(); }
}

/// @function createBackground
/// @description Display background
/// @param {any} _bgSprite Background Sprite Reference
function createBackground(_bgSprite){
	global.backgroundLayer = layer_create(2, "bg");
	global.background = layer_background_create(global.backgroundLayer,_bgSprite);
}

/// @function createCharacter
/// @description Display character
/// @param {Asset.GMSprite} _character Character Sprite Reference
function createCharacter(_character){
	var character_layer = layer_create(0, "ch");
	var character_instance = instance_create_layer(0,0,character_layer, obj_scene_character, {character: _character});
	
}

/// @function populateAllObjects
/// @description Populates the objects in the room (bg, buttons)
function populateAllObjects(){
    var scene = global.dialog.scenes[global.currentIndex];
    var sceneName = scene.sceneName;
    var sceneText = scene.sceneText;
	var _background=-1;
	var _character=-1;
	
	if(struct_exists(scene, "background")){
		_background = scene.background;
	} else {
		_background = spr_BG_error;
	}
	layer_background_change( global.background, _background);
	
	if(struct_exists(scene, "character")){
		createCharacter(scene.character);
	}
	if(struct_exists(scene, "onLoad")){
		var _onLoad = scene.onLoad;
		if(is_array(_onLoad)){
			array_foreach(_onLoad, script_execute_ext(_onLoad.func, _onLoad.params));
		} else {
			script_execute_ext(_onLoad.func, _onLoad.params);
		}
	}
	//draw_set_font(font_small);
	//Menu(200,200+string_height(sceneText)*1.5,scene.options);
	//instance_create_depth(.28*room_width, .1*room_height, 1, MainText, {mainName:sceneName, mainText:sceneText});
    show_debug_message(sceneName);
 /*    
    // Create buttons for each choice
    var buttonOptions = [];
    
    // Check which source we're using (JSON or struct)
   if (variable_struct_exists(scene, "choices")) {
        // Using JSON format
        var buttonCount = array_length(scene.choices);
        var buttonSpacing = 40; // Space between buttons
        var startY = room_height * 0.4; // Start position for buttons
        
        for (var i = 0; i < buttonCount; i++) {
            var choice = scene.choices[i];
            var btn = instance_create_depth(room_width * 0.3, // X position - more centered
                                           startY + (buttonSpacing * i), // Y position with spacing
                                           -100, 
                                           obj_button);
            
            btn.choiceText = choice.choiceText;
            btn.choiceTarget = choice.choiceTarget;
            btn.choiceFunc = choice.choiceFunc;
            btn.choiceFuncParameters = choice.choiceFuncParameters;
            
            // Add the item requirement and reward properties
            if (variable_struct_exists(choice, "choiceNeeds")) {
                btn.choiceNeeds = choice.choiceNeeds;
            } else {
                btn.choiceNeeds = "";
            }
            
            if (variable_struct_exists(choice, "choiceReceive")) {
                btn.choiceReceive = choice.choiceReceive;
            } else {
                btn.choiceReceive = "";
            }
            
            // Store enemy data in button for battle system
            if (variable_struct_exists(choice, "enemies") && array_length(choice.enemies) > 0) {
                btn.enemyData = choice.enemies;
            } else {
                btn.enemyData = [];
            }
        }
    } else if (variable_struct_exists(scene, "options")) {  */
        // Using DialogStructManager format
        var options = [];
        for (var i = 0; i < array_length(scene.options); i++) {
            array_push(options, scene.options[i]);
        }
		if(struct_exists(scene, "blocked")){
			array_push(options, blocked(scene.blocked));
		}
		if(struct_exists(scene, "onLoad")){
			if(is_array(scene.onLoad)){
				array_foreach(scene.onLoad, script_execute_ext(value.func,value.param));
			}
		}
        // Create menu with options
        Menu(room_width*0.75, room_height*0.75, options,-1,true);
    //}
    // Create the text display
    instance_create_depth(.28 * room_width, .1 * room_height, 1, MainText, {
        mainName: sceneName, 
        mainText: sceneText
    });
}
