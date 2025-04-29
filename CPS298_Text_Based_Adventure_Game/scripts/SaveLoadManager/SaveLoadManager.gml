/// @function saveGame
/// @description Saves the current game state to a file
/// @param {string} slot Save slot name/number
function saveGame(slot) {
    // Create a struct to hold all game data
    var saveData = {
        // Player data
        player: {
            health: global.player.health,
            maxHealth: global.player.maxHealth,
            gold: global.player.gold,
            inventory: []
        },
        // Game state
        gameState: {
            currentSceneIndex: global.currentIndex,
            // Add any other game state variables here
        },
        // Save metadata
        metadata: {
            saveDate: date_datetime_string(date_current_datetime()),
            gameVersion: "1.0" // Update with your actual version
        }
    };
    
    // Save inventory items (only their names since we can't save structs directly)
    for (var i = 0; i < array_length(global.player.inventory); i++) {
        var item = global.player.inventory[i];
        array_push(saveData.player.inventory, item.name);
    }
    
    // Convert to JSON string
    var jsonString = json_stringify(saveData);
    
    // Save to file
    var filename = "save_" + string(slot) + ".sav";
    var file = file_text_open_write(filename);
    file_text_write_string(file, jsonString);
    file_text_close(file);
    
    show_debug_message("Game saved to slot " + string(slot));
    return true;
}

/// @function loadGame
/// @description Loads a game from a save file
/// @param {string} slot Save slot to load
/// @returns {bool} Success or failure
function loadGame(slot) {
	//init
	loadDialogData();
	
	
    var filename = "save_" + string(slot) + ".sav";
    
    // Check if file exists
    if (!file_exists(filename)) {
        show_debug_message("Save file does not exist: " + filename);
        return false;
    }
    
    // Read the file
    var file = file_text_open_read(filename);
    var jsonString = "";
    
    while (!file_text_eof(file)) {
        jsonString += file_text_read_string(file);
        file_text_readln(file);
    }
    
    file_text_close(file);
    
    // Parse JSON
    var saveData = json_parse(jsonString);
    
    // Restore player data
    global.player.health = saveData.player.health;
    global.player.maxHealth = saveData.player.maxHealth;
    global.player.gold = saveData.player.gold;
    
    // Clear and restore inventory
    global.player.inventory = [];
    for (var i = 0; i < array_length(saveData.player.inventory); i++) {
        var itemName = saveData.player.inventory[i];
        // Find the item in our global item list by name
        var itemsNames = variable_struct_get_names(global.itemList);
        for (var j = 0; j < array_length(itemsNames); j++) {
            var item = variable_struct_get(global.itemList, itemsNames[j]);
            if (item.name == itemName) {
                array_push(global.player.inventory, item);
                break;
            }
        }
    }
    
    // Restore game state
    global.currentIndex = saveData.gameState.currentSceneIndex;
    
    // Refresh the game display
    destroyAllObjects();
    populateAllObjects();
    
    show_debug_message("Game loaded from slot " + string(slot));
    return true;
}

/// @function getSaveInfo
/// @description Gets info about a save file without loading it
/// @param {string} slot Save slot to check
/// @returns {struct} Save metadata or undefined if file doesn't exist
function getSaveInfo(slot) {
    var filename = "save_" + string(slot) + ".sav";
    
    // Check if file exists
    if (!file_exists(filename)) {
        return undefined;
    }
    
    // Read the file
    var file = file_text_open_read(filename);
    var jsonString = "";
    
    while (!file_text_eof(file)) {
        jsonString += file_text_read_string(file);
        file_text_readln(file);
    }
    
    file_text_close(file);
    
    // Parse JSON
    var saveData = json_parse(jsonString);
    
    // Return just the metadata
    return saveData.metadata;
}

/// @function createSaveMenu
/// @description Creates a menu for saving/loading games
/// @param {array} _parameters [isSaving = true/false, isInGame = true/false]
function createSaveMenu(_parameters) {
	var isSaving = _parameters[0]
	var isInGame;

	if(!is_undefined(_parameters[1])){
		isInGame = _parameters[1]	
	}

    var options = [];
    var menuTitle = isSaving ? "Save Game" : "Load Game";
	
    // Create options for 3 save slots
    for (var i = 1; i <= 3; i++) {
        var slotInfo = getSaveInfo(i);
        var slotText = "Slot " + string(i);
        
        // Add date if slot exists
        if (slotInfo != undefined) {
            slotText += " - " + slotInfo.saveDate;
        } else if (!isSaving) {
            slotText += " (Empty)";
        }
        
        // Create menu option
        if (isSaving) {
            array_push(options, [slotText, saveGame, i]);
        } else {
            // For load menu, disable empty slots
            if (slotInfo != undefined) {
                array_push(options, [slotText, loadGame, i]);
            } else {
                array_push(options, [slotText, -1, -1]);
            }
        }
    }
    
	if(isInGame){
	    // Add a back option
	    array_push(options, ["Back", createPauseMenu, -1]);	
	}else{
	    // Add a back option
		array_push(options, ["Back", room_goto, rm_MainMenu]);
	}

    
    // Create the menu
    Menu(room_width/2, room_height/2, options, menuTitle, true, true);
}
