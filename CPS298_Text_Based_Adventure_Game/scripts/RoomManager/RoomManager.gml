/// @function destroyAllObjects
/// @description Destroys all objects in the room (Literally everything)
function destroyAllObjects() {
    log_info("Destroying all objects");
    with(all) { instance_destroy(); }
}

/// @function createBackground
/// @description Display background
/// @param {any} _bgSprite Background Sprite Reference
function createBackground(_bgSprite) {
    if (!validate_not_undefined(_bgSprite, "_bgSprite")) {
        // Fallback to error sprite
        _bgSprite = spr_BG_error;
        log_warning("Using fallback error sprite for background");
    }
    
    if (!sprite_exists(_bgSprite)) {
        log_warning("Sprite does not exist, using fallback error sprite");
        _bgSprite = spr_BG_error;
    }
    
    global.backgroundLayer = layer_create(2, "bg");
    global.background = layer_background_create(global.backgroundLayer, _bgSprite);
    log_info("Background created with sprite: " + string(_bgSprite));
}

/// @function createCharacter
/// @description Display character
/// @param {Asset.GMSprite} _character Character Sprite Reference
function createCharacter(_character) {
    if (!validate_not_undefined(_character, "_character")) {
        log_error("Cannot create character with undefined sprite");
        return;
    }
    
    if (!sprite_exists(_character)) {
        log_warning("Character sprite does not exist, character will not be displayed");
        return;
    }
    
    var character_layer = layer_create(0, "ch");
    var character_instance = instance_create_layer(0, 0, character_layer, obj_scene_character, {character: _character});
    log_info("Character created with sprite: " + string(_character));
}

/// @function populateAllObjects
/// @description Populates the objects in the room (bg, buttons)
function populateAllObjects() {
	
	instance_create_depth(0,0,0,obj_gameController);
	
    if (!variable_global_exists("currentIndex")) {
        log_error("global.currentIndex is not initialized", true);
        return;
    }
    
    if (!validate_scene_exists(global.currentIndex)) {
        log_error("Invalid scene index: " + string(global.currentIndex), true);
        return;
    }
    
    var scene = global.dialog.scenes[global.currentIndex];
    var sceneName = scene.sceneName;
    var sceneText = scene.sceneText;
    var _background = -1;
    var _character = -1;
    
    if (struct_exists(scene, "background")) {
        _background = scene.background;
    } else {
        log_warning("No background defined for scene " + string(global.currentIndex) + ", using error sprite");
        _background = spr_BG_error;
    }
    
    try {
        layer_background_change(global.background, _background);
    } catch (error) {
        log_error("Failed to change background: " + string(error));
        // Try to create a new background
        createBackground(_background);
    }
    
    if (struct_exists(scene, "character")) {
        try {
            createCharacter(scene.character);
        } catch (error) {
            log_error("Failed to create character: " + string(error));
        }
    }
    
    try {
        if (struct_exists(scene, "onLoad")) {
		        var _onLoad = scene.onLoad;
		        _onLoad.func(_onLoad.params);
	      } else {
            log_warning("Invalid or no onLoad data in scene " + string(global.currentIndex));
        }
    } catch (error) {
        log_error("Error executing onLoad function: " + string(error));
    }
    
    log_info("Populating scene: " + sceneName + " (index: " + string(global.currentIndex) + ")");
    
    // Create the menu options
    var options = [];
    
    if (variable_struct_exists(scene, "options") && is_array(scene.options)) {
        for (var i = 0; i < array_length(scene.options); i++) {
            array_push(options, scene.options[i]);
        }
    } else {
        log_warning("Scene has no options: " + sceneName);
    }
    
    if (struct_exists(scene, "blocked")) {
        try {
            array_push(options, blocked(scene.blocked));
        } catch (error) {
            log_error("Error processing blocked options: " + string(error));
        }
    }
    
    // Create menu with options if we have any
    if (array_length(options) > 0) {
        Menu(room_width * 0.65, room_height * 0.75, options, -1, true);
    } else {
        log_warning("No menu options created for scene: " + sceneName);
    }
    
    // Create the text display
    try {
		var xposition = room_width * .28;
		var yposition = room_height * .1;
		
        instance_create_depth(xposition, yposition, 1, MainText, {
            mainName: sceneName, 
            mainText: sceneText
        });
		
        log_info("Created MainText for scene: " + sceneName);
    } catch (error) {
        log_error("Failed to create MainText: " + string(error));
    }
}
