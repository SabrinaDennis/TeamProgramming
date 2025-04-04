draw_set_color(c_red);

// Check if this choice has a requirement
if (choiceNeeds != "") {
    // Check if player has the required item
    var hasRequiredItem = false;
    for (var i = 0; i < array_length(global.player.inventory); i++) {
        if (global.player.inventory[i].name == choiceNeeds) {
            hasRequiredItem = true;
            break;
        }
    }
    
    if (!hasRequiredItem) {
        // Player doesn't have the required item
        show_debug_message("Player doesn't have required item: " + choiceNeeds);
        // Show a message to the player
        var needsMsg = "You need a " + choiceNeeds + " for this option.";
        // Create a temporary message - could be more elegant with a proper UI message
        instance_create_depth(room_width/2, room_height/3, -1000, MainText, {
            mainName: "Missing Item", 
            mainText: needsMsg
        });
        return; // Exit the event without proceeding
    } else {
        // Player has the item, continue
        show_debug_message("Player has required item: " + choiceNeeds);
    }
}

// If we get here, either no item was required or the player has the item
global.currentIndex = choiceTarget;
show_debug_message(global.currentIndex);
ChoiceManager(choiceFunc, choiceFuncParameters);

// Process the choiceReceive - add items to inventory if needed
if (choiceReceive != "") {
    // Currently just adding predefined items from your global.itemList
    // You could extend this to create new items dynamically
    switch (choiceReceive) {
        case "key":
            playerAddItem(global.itemList.largeKey);
            show_debug_message("Player received largeKey");
            break;
        case "win":
            // Handle winning scenario
            show_debug_message("Player has won!");
            break;
        default:
            // Check if there's a matching item in the global.itemList
            var itemVarName = variable_struct_get(global.itemList, choiceReceive);
            if (itemVarName != undefined) {
                playerAddItem(itemVarName);
                show_debug_message("Player received " + choiceReceive);
            } else {
                show_debug_message("Unknown item to receive: " + choiceReceive);
            }
            break;
    }
}

//RoomManager Script Functions
destroyAllObjects();
populateAllObjects();
