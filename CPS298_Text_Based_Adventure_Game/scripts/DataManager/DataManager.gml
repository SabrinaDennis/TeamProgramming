/// @function loadDialogData
/// @description Loads dialog from JSON and converts to DialogStructManager format
/// @param {string} filename Name of the JSON file to load
function loadDialogData(filename){
    var json_string = "";
    
    // Read the file content
    if (file_exists(filename)) {
        var file = file_text_open_read(filename);
        while (!file_text_eof(file)) {
            json_string += file_text_read_string(file);
            file_text_readln(file);
        }
        file_text_close(file);
    } else {
        show_debug_message("ERROR: Dialog file not found: " + filename);
        return;
    }
    
    // Parse JSON
    var dialogData = json_parse(json_string);
    
    // Create the dialog structure
    global.dialog = {
        scenes: []
    };
    
    // Define the goToSceneIndex function locally
    function localGoToSceneIndex(parameters) {
        global.currentIndex = parameters[0];
        destroyAllObjects();
        populateAllObjects();
    }
    
    // Convert JSON format to DialogStructManager format
    for (var i = 0; i < array_length(dialogData.gameDialog.scenes); i++) {
        var scene = dialogData.gameDialog.scenes[i];
        
        var newScene = {
            sceneIndex: scene.sceneIndex,
            sceneName: scene.sceneName,
            sceneText: scene.sceneText,
            options: [],
            choices: scene.choices
        };
        
        // Convert choices to options format
        for (var j = 0; j < array_length(scene.choices); j++) {
            var choice = scene.choices[j];
            
            if (choice.choiceText != undefined) {
                // Create an option in the format expected by the menu system
                var option = [
                    choice.choiceText,
                    localGoToSceneIndex,
                    [choice.choiceTarget]
                ];
                
                array_push(newScene.options, option);
            }
        }
        
        array_push(global.dialog.scenes, newScene);
    }
    
    show_debug_message("Dialog loaded successfully from " + filename);
}
