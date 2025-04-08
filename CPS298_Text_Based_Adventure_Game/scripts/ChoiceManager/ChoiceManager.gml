function ChoiceManager(funcName, parameters){
    //TODO add obvious checks here
    switch(funcName) {
        case "fight":
            // Get button that was clicked
            var btn = instance_nearest(mouse_x, mouse_y, obj_button);
            
            if (variable_instance_exists(btn, "enemyData") && array_length(btn.enemyData) > 0) {
                // Get first enemy from the data
                var enemyData = btn.enemyData[0];
                var enemyKeys = variable_struct_get_names(enemyData);
                
                if (array_length(enemyKeys) > 0) {
                    var enemyName = enemyKeys[0];
                    var enemyChance = variable_struct_get(enemyData, enemyName);
                    
                    // Only spawn enemy if random chance succeeds
                    if (random(1) < enemyChance) {
                        show_debug_message("Starting battle with: " + enemyName);
                        createEnemy(enemyName, spr_enemy, 100);
                        createBattleInterface();
                    } else {
                        show_debug_message("Lucky! No enemy encountered.");
                        // Continue to next scene without battle
                        destroyAllObjects();
                        populateAllObjects();
                    }
                }
            } else {
                show_debug_message("Fight function called but no enemies defined.");
                // Just continue to next scene
                destroyAllObjects();
                populateAllObjects();
            }
            break;
            
        case "shop":
            var itemsForSale = (parameters.length > 0) ? parameters[0] : "no items";
            show_debug_message("The shopkeeper offers you " + itemsForSale);
            
            // Create shop interface with available items
            createShopInterface(parameters);
            break;
            
        case "find":
            var foundItem = (parameters.length > 0) ? parameters[0] : "unknown item";
            show_debug_message("You find a " + foundItem + "!");
            
            // Add item to inventory if it exists in global.itemList
            if (variable_struct_exists(global.itemList, foundItem)) {
                playerAddItem(variable_struct_get(global.itemList, foundItem));
                show_debug_message("Added " + foundItem + " to inventory");
            }
            break;
            
        case "lose":
            var requiredItem = (parameters.length > 0) ? parameters[0] : "unknown item";
            show_debug_message("You need a " + requiredItem + " but don't have it.");
            break;
            
        case "blocked":
            var requiredItem = (parameters.length > 0) ? parameters[0] : "unknown item";
            var failTarget = (parameters.length > 1) ? parameters[1] : global.currentIndex;
            var successTarget = (parameters.length > 2) ? parameters[2] : global.currentIndex;
            
            // Check if player has the required item
            var hasItem = false;
            for (var i = 0; i < array_length(global.player.inventory); i++) {
                if (global.player.inventory[i].name == requiredItem) {
                    hasItem = true;
                    break;
                }
            }
            
            // Go to appropriate scene based on item check
            if (hasItem) {
                global.currentIndex = successTarget;
                show_debug_message("You have the " + requiredItem + ", proceeding to scene " + string(successTarget));
            } else {
                global.currentIndex = failTarget;
                show_debug_message("You don't have the " + requiredItem + ", going to scene " + string(failTarget));
            }
            break;
            
        case "nothing":
            show_debug_message("Just continuing to the next part.");
            break;
            
        default:
            show_debug_message("Function name not recognized: " + funcName);
            break;
    }
}

// New helper function for shop interface
function createShopInterface(items) {
    // Create a menu with items for sale
    var shopItems = [];
    
    // Default items if none specified
    if (items.length == 0) {
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
                var price = (itemInfo.length > 1) ? itemInfo[1] : 10;
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
