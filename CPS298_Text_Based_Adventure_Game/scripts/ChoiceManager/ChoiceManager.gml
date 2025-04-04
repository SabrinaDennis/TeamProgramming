function ChoiceManager(funcName, parameters){
    //TODO add obvious checks here
    switch(funcName){
        case "fight":
            // Check if there are enemies in the current scene choice
            var currentScene = global.dialog.scenes[global.currentIndex];
            var hasEnemies = false;
            
            // Find the selected choice
            for (var i = 0; i < array_length(currentScene.choices); i++) {
                var choice = currentScene.choices[i];
                if (choice.choiceFunc == "fight" && array_length(choice.enemies) > 0) {
                    hasEnemies = true;
                    
                    // Select an enemy based on probability
                    var enemyKeys = variable_struct_get_names(choice.enemies[0]);
                    if (array_length(enemyKeys) > 0) {
                        var enemyName = enemyKeys[0]; // Default to first enemy
                        
                        // Create enemy and start battle
                        show_debug_message("Starting battle with: " + enemyName);
                        createEnemy(enemyName, spr_enemy, 100); // Using default health of 100
                        
                        // Create battle UI elements - buttons for attack, defend, etc.
                        createBattleInterface();
                        
                        break;
                    }
                }
            }
            
            if (!hasEnemies) {
                show_debug_message("Fight function called but no enemies defined.");
            }
            break;
            
        case "shop":
            show_debug_message(string_concat("The shopkeeper nods at you and offers you ", parameters[0], " but like as an array of items and prices."));
            break;
            
        case "find":
            show_debug_message(string_concat("You find a shiny ", parameters[0], "! how nice."));
            break;
            
        case "lose":
            show_debug_message(string_concat("check if you have ", parameters[0], " and if you do?  You don't."));
            break;
            
        case "blocked":
            show_debug_message(string_concat("If you don't have a ", parameters[0], " you go to index ", parameters[1], ", but if you do have it, you go to ", parameters[2],"."));
            break;
            
        case "nothing":
            show_debug_message(string_concat("You just go to the next part."));
            break;
            
        default:
            show_debug_message(string_concat("funcName not in list"));
            break;
    }
}

// New function to create battle interface
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
    // Play attack sound
    playSound(snd_menuDown, 5);
    
    // Apply damage to enemy
    enemyTakeDamage(damageAmount[0]);
    
    // Check if enemy is defeated
    if (global.enemy.health <= 0) {
        // Play victory sound/music
        playSceneMusic("victory");
        
        // Enemy defeated
        instance_destroy(obj_enemy);
        show_debug_message("Enemy defeated!");
        
        // Return to dialog after a short delay
        alarm[0] = room_speed * 2; // 2 second delay
        // Create a temporary object to handle the delay
        with (instance_create_depth(0, 0, 0, obj_battle_controller)) {
            alarm[0] = room_speed * 2;
        }
    } else {
        // Enemy attacks back (simple version)
        var enemyDamage = irandom_range(5, 15);
        playerTakeDamage(enemyDamage);
        show_debug_message("Enemy attacks for " + string(enemyDamage) + " damage!");
        
        // Recreate battle interface
        createBattleInterface();
    }
}

function defendAction() {
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
    // 50% chance to flee
    if (random(1) < 0.5) {
        show_debug_message("Successfully fled from battle!");
        instance_destroy(obj_enemy);
        
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
