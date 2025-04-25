function FuncManager(funcName, parameters){
    //TODO add obvious checks here
    
    // Add type checking to safely handle parameters
    var params = parameters;
    if (!is_array(parameters)) {
        params = [parameters]; // Convert to array if not already
    }
}

function theEnd(_parameters){
	//show_message_async(_parameters);
	Menu(global.optionMenuX,global.optionMenuY,[["Exit to Main Menu...", room_goto, 0]]);
}

function fight(_parameters){
	// Validate parameters
	if (_parametes == undefined) {
		show_debug_message("ERROR: fight() called with undefined parameters");
		return;
	}
	
    // Get button that was clicked
    var btn = instance_nearest(mouse_x, mouse_y, obj_button);
	
	if (btn != noon && variable_instance_exists(btn, "enemyData")) {
		if (!is_array(btn.enemyData) || array_length(btn.enemyData) == 0) {
			show_debug_message("ERROR: Enemy data array is empty or invalid");
			destoryAllObjects();
			populateAllObjects();
			return;
		}
		
		// Get first enemy from the data
		var enemyData = btn.enemyData[0];
		
		if (!is_struct(enemyData)) {
			show_debug_message("ERROR: Enemy data is not a valid struct");
			destroyAllObjects();
			populateAllObjects();
			return;
		}
		
		var enemyKeys = variable_struct_get_names(enemyData);
		
		if (array_length(enemyKeys) > 0) {
			var enemyName = enemyKeys[0];
			
			if (!variable_struct_exists(enemyData,  enemyName)) {
				show_debug_message("ERROR: Enemy name not found in enemy data");
				destroyAllObjects();
				populateAllObjects();
				return;
			}
			
			var enemyChance = variable_struct_get(enemyData, enemyName);
			
			// Only spawn enemy if random chance succeeds
			if (random(1) < enemyChance) {
				show_debug_message("Strating battle with: " + enemyName);
				createEnemy(enemyName, spr_enemy, 100);
				createBattleInterface();
			} else {
				show_debug_message("Lucky! No enemy encountered.");
				// Continue to next scene without battle
				destroyAllObjects();
				populateAllObjects();
			}
		} else {
			show_debug_message("WARNING: Enemy data exists but contains no enemy definitions");
			destroyAllObjects();
			populateAllObjects();
		}
	} else {
		show_debug_message("Fight function called but no enemies defined.");
		// Just continue to next scence
		destroyAllObjects();
		populateAllObjects();
	}
}
            
///@function lose(_parameters)
///@param _parameters String
function lose(_parameters){
	var foundItem = (array_length(_parameters) > 0) ? string(_parameters[0]) : "unknown item";
    if(array_contains(global.player.inventory, foundItem)){
		array_delete(global.player.inventory, array_get_index(global.player.inventory, foundItem),1);
	}
}

///@function goToSceneIndex(_parameters)
///@param {array} _parameters  holds the index of the scene at _parameters[0]
function goToSceneIndex(_parameters) {
    if (!validate_not_undefined(_parameters, "_parameters")) {
        log_error("Parameters for goToSceneIndex are undefined", true);
        return;
    }
    
    if (!validate_array_length(_parameters, 1, "_parameters")) {
        log_error("Parameters array for goToSceneIndex is empty", true);
        return;
    }
    
    var targetIndex = _parameters[0];
    
    if (!validate_is_number(targetIndex, "scene index")) {
        log_error("Scene index must be a number, got: " + string(targetIndex), true);
        return;
    }
    
    if (!validate_scene_exists(targetIndex)) {
        log_error("Invalid target scene index: " + string(targetIndex), true);
        return;
    }
    
    log_info("Transitioning from scene " + string(global.currentIndex) + " to " + string(targetIndex));
    global.currentIndex = targetIndex;
    destroyAllObjects();
    populateAllObjects();
}

function find(_parameters){
	var foundItem = (array_length(_parameters) > 0) ? string(_parameters[0]) : "unknown item";
	//show_debug_message("You find a " + foundItem + "!");
    
	// Add item to inventory if it exists in global.itemList
    if (variable_struct_exists(global.itemList, foundItem)) {
		playerAddItem(variable_struct_get(global.itemList, foundItem));
        //show_debug_message("Added " + foundItem + " to inventory");
    }
}


///@function	blocked([item, destinationIfNot, destinationIfDo])
///@param {Array}	params
function blocked(params){
            var requiredItem = (array_length(params) > 0) ? string(params[0]) : "unknown item";
            var description = "";
			var target = 0;
			
			
            // Handle numeric conversion safely - use default values if conversion fails
            var failTarget = global.currentIndex;
            var successTarget = global.currentIndex;
            
            // Try to convert the parameters to scene indices
            if (array_length(params) > 1) {
                try {
                    // Only try to convert if it seems to be a number\
					if(is_array(params[1])) params[1] = params[1][0];
                    if (string_digits(string(params[1])) == string(params[1])) {
                        failTarget =real(params[1]);
                    } else {
                        show_debug_message("Warning: Could not convert " + string(params[1]) + " to a number, using current index");
                    }
                } catch (e) {
                    show_debug_message("Error converting failTarget: " + string(e));
                }
            }
            
            if (array_length(params) > 2) {
                try {
                    // Only try to convert if it seems to be a number
					
					if(is_array(params[2])) params[2] = params[2][0];
                    if (string_digits(string(params[2])) == string(params[2])) {
                        successTarget = real(params[2]);
                    } else {
                        show_debug_message("Warning: Could not convert " + string(params[2]) + " to a number, using current index");
                    }
                } catch (e) {
                    show_debug_message("Error converting successTarget: " + string(e));
                }
            }
                        
            // Go to appropriate scene based on item check
            if (array_contains(global.player.inventory, requiredItem)) {
               target = successTarget;
                description = ("You have the " + requiredItem + ", "+ global.dialog.scenes[successTarget].sceneName);
				
            } else {
                global.currentIndex = failTarget;
                description = ("You don't have the " + requiredItem + ", you must proceed to " +  global.dialog.scenes[failTarget].sceneName);
            }
			
			return [description, goToSceneIndex, [target]];
}


// New helper function for shop interface
function createShopInterface(items) {
    // Create a menu with items for sale
    var shopItems = [];
    
    // Default items if none specified
    if (array_length(items) == 0) {
        array_push(shopItems, ["Health Potion - 10 gold", purchaseItem, ["healthPotion", 10]]);
        array_push(shopItems, ["Wooden Shield - 25 gold", purchaseItem, ["woodenShield", 25]]);
    } else {
        // Parse items from parameters
        for (var i = 0; i < array_length(items); i++) {
            var itemInfo = items[i];
            if (typeof(itemInfo) == "string") {
                // Simple format: just item name
                array_push(shopItems, [itemInfo + " - 10 gold", purchaseItem, [itemInfo, 10]]);
            } else if (is_array(itemInfo)) {
                // Array format: [name, price]
                var name = itemInfo[0];
                var price = (array_length(itemInfo) > 1) ? itemInfo[1] : 10;
                array_push(shopItems, [name + " - " + string(price) + " gold", purchaseItem, [name, price]]);
            }
        }
    }
    
    // Add exit option
    array_push(shopItems, ["Exit Shop", continueDialog, -1]);
    
    // Create the shop menu
    Menu(room_width/2, room_height/2, shopItems, "Shop", true);
}

// Function for purchasing items
function purchaseItem(params) {
    var itemName = params[0];
    var itemPrice = params[1];
    
    // Check if player has enough gold
    if (global.player.gold >= itemPrice) {
        global.player.gold -= itemPrice;
        
        // Add item to inventory if it exists in global.itemList
        if (variable_struct_exists(global.itemList, itemName)) {
            playerAddItem(variable_struct_get(global.itemList, itemName));
            show_debug_message("Purchased " + itemName + " for " + string(itemPrice) + " gold");
        } else {
            show_debug_message("Item " + itemName + " not found in global.itemList");
        }
    } else {
        show_debug_message("Not enough gold to purchase " + itemName);
    }
    
    // Return to dialog
    destroyAllObjects();
    populateAllObjects();
}

// Function to continue dialog after shop
function continueDialog() {
    destroyAllObjects();
    populateAllObjects();
}

// Function to create battle interface
function createBattleInterface() {
    // Play battle music
    playSceneMusic("battle");
    
    // Create menu with battle options
    Menu(
        room_width/2,
        room_height - 100,
        [
            ["Attack", attackEnemy, [10]],  // 10 damage
            ["Defend", defendAction, -1],
            ["Use Item", openInventory, -1],
            ["Flee", attemptFlee, -1]
        ],
        "Battle Options",
        true // Centered
    );
}

// Battle action functions
function attackEnemy(damageAmount) {
	// Validate parameters
	if (!is_array(damageAmount) || array_length(damageAmount) < 1) {
		show_debug_message("ERROR: Invalid damage amount parameters");
		return;
	}
	// Check if enemy exists before applying damage
	if (!variable_global_exists("enemy") || !is_struct(global.enemy)) {
		show_debug_message("ERROR: Cannot attack - no valid enemy exists");
		return;
	}
	
    // Play attack sound
	if (audio_exists(snd_menuDown)) {
		audio_play_sound(snd_menuDown, 5, false);
	}
    
    // Apply damage to enemy
    enemyTakeDamage(damageAmount[0]);
    
    // Check if enemy is defeated
	if (global.enemy.health <= 0) {
		// Enemy defeated
		if (instance_exists(obj_enemy)) {
			instance_destroy(obj_enemy);
		}
		show_debug_message("Enemy defeated!");
		
		// Return to dialog after a short delay
		with (instance_create_depth(0, 0, 0, obj_battle_controller)) {
			alarm[0] = game_get_speed(gamespeed_fps) * 2;
		}
	} else {
		// Enemy attacks back (simple version)
		var enemyDamage = irandom_range(5, 15);
		playerTakeDamage(enemyDamage);
		show_debug_message("Enemy attakcs for " + string(enemyDamage) + " damage!");
		
		// Recreate battle interface
		createBattleInterface();
	}
}

function defendAction() {
	// Check if enemy exists before proceeding
	if (!variable_global_exists("enemy") || !is_struct(global.enemy)) {
		show_debug_message("ERROR: Cannot defend - no valid enemy exists");
		return;
	}
	
    // Reduce incoming damage for next turn
    show_debug_message("Defending - reduced damage next turn");
    
    // Enemy still attacks but for less damage
    var enemyDamage = irandom_range(1, 8);
    playerTakeDamage(enemyDamage);
    show_debug_message("Enemy attacks for " + string(enemyDamage) + " reduced damage!");
    
    // Recreate battle interface
    createBattleInterface();
}

function openInventory() {
    // Open inventory for item selection
    instance_create_depth(room_width/2, room_height/2, -1000, obj_inventory);
}

function attemptFlee() {
	// Check if enemy exists before proceeding
	if (!variable_global_exists("enemy") || !is_struct(global.enemy)) {
		show_debug_message("ERROR: Cannot flee - no valid enemy exists");
		destroyAllObjects();
		populateAllObjects();
		return;
	}
	
    // 50% chance to flee
    if (random(1) < 0.5) {
        show_debug_message("Successfully fled from battle!");
		// Clean up enemy instance
		if (instance_exists(obj_enemy)) {
			instance_destroy(obj_enemy);
		}
        
        // Return to dialog
        destroyAllObjects();
        populateAllObjects();
    } else {
        show_debug_message("Failed to flee!");
        
        // Enemy gets a free attack
        var enemyDamage = irandom_range(5, 15);
        playerTakeDamage(enemyDamage);
        show_debug_message("Enemy attacks for " + string(enemyDamage) + " damage!");
        
        // Recreate battle interface
        createBattleInterface();
    }
}

function addFriend(_parameters){
	var friend = "";
	if(is_array(_parameters)){
		friend = (array_length(_parameters) > 0) ? string(_parameters[0]) : "unknown friend";
	} else if(is_string(_parameters)){
		friend = _parameters;
	} else {
		friend="unknown friend";
	}
	

	array_push(global.player.friendlist, friend);
	show_debug_message(friend + " is now a friend");
}
