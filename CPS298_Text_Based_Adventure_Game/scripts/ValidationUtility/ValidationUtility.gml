/// @function validate_not_undefined
/// @description Validates that a value is not undefined
/// @param {any} value The value to check
/// @param {string} param_name The name of the parameter for logging
/// @returns {bool} Whether the value is valid
function validate_not_undefined(value, param_name) {
    if (value == undefined) {
        log_error("Parameter '" + param_name + "' is undefined");
        return false;
    }
    return true;
}

/// @function validate_is_number
/// @description Validates that a value is a number
/// @param {any} value The value to check
/// @param {string} param_name The name of the parameter for logging
/// @returns {bool} Whether the value is valid
function validate_is_number(value, param_name) {
    if (!is_real(value)) {
        log_error("Parameter '" + param_name + "' is not a number");
        return false;
    }
    return true;
}

/// @function validate_is_string
/// @description Validates that a value is a string
/// @param {any} value The value to check
/// @param {string} param_name The name of the parameter for logging
/// @returns {bool} Whether the value is valid
function validate_is_string(value, param_name) {
    if (!is_string(value)) {
        log_error("Parameter '" + param_name + "' is not a string");
        return false;
    }
    return true;
}

/// @function validate_array_length
/// @description Validates that an array has at least a certain length
/// @param {array} array The array to check
/// @param {real} min_length The minimum length required
/// @param {string} array_name The name of the array for logging
/// @returns {bool} Whether the array is valid
function validate_array_length(array, min_length, array_name) {
    if (!is_array(array)) {
        log_error("Expected an array for '" + array_name + "', got something else");
        return false;
    }
    
    if (array_length(array) < min_length) {
        log_error("Array '" + array_name + "' is too short. Expected at least " + string(min_length) + " elements, got " + string(array_length(array)));
        return false;
    }
    
    return true;
}

/// @function validate_struct_exists
/// @description Validates that a struct exists and has a property
/// @param {struct} struct The struct to check
/// @param {string} property The property to check for
/// @param {string} struct_name The name of the struct for logging
/// @returns {bool} Whether the struct is valid
function validate_struct_exists(struct, property, struct_name) {
    if (!is_struct(struct)) {
        log_error("Expected a struct for '" + struct_name + "', got something else");
        return false;
    }
    
    if (!variable_struct_exists(struct, property)) {
        log_error("Struct '" + struct_name + "' is missing property '" + property + "'");
        return false;
    }
    
    return true;
}

/// @function validate_scene_exists
/// @description Validates that a scene index exists
/// @param {real} scene_index The scene index to validate
/// @returns {bool} Whether the scene index is valid
function validate_scene_exists(scene_index) {
    if (!variable_global_exists("dialog")) {
        log_error("Dialog data not initialized", true);
        return false;
    }
    
    if (!is_struct(global.dialog)) {
        log_error("global.dialog is not a struct", true);
        return false;
    }
    
    if (!variable_struct_exists(global.dialog, "scenes")) {
        log_error("global.dialog is missing 'scenes' array", true);
        return false;
    }
    
    if (!is_array(global.dialog.scenes)) {
        log_error("global.dialog.scenes is not an array", true);
        return false;
    }
    
    if (scene_index < 0 || scene_index >= array_length(global.dialog.scenes)) {
        log_error("Scene index " + string(scene_index) + " is out of bounds. Max index is " + string(array_length(global.dialog.scenes) - 1), true);
        return false;
    }
    
    return true;
}
