log_info("Logging system initialized");

/// @function log_info
/// @description Logs informational messages
/// @param {string} message The message to log
function log_info(message) {
    var timestamp = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);
    show_debug_message("[INFO][" + timestamp + "] " + string(message));
}

/// @function log_warning
/// @description Logs warning messages
/// @param {string} message The warning message to log
function log_warning(message) {
    var timestamp = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);
    show_debug_message("[WARNING][" + timestamp + "] " + string(message));
    
    // Store warnings for in-game debug panel
    if (variable_global_exists("warnings")) {
        array_push(global.warnings, {time: timestamp, message: message});
    } else {
        global.warnings = [{time: timestamp, message: message}];
    }
}

/// @function log_error
/// @description Logs error messages and takes appropriate action
/// @param {string} message The error message to log
/// @param {bool} critical Whether this is a critical error requiring immediate attention
function log_error(message, critical = false) {
    var timestamp = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second);
    show_debug_message("[ERROR][" + timestamp + "] " + string(message));
    
    // Store errors for in-game debug panel and possible reporting
    if (variable_global_exists("errors")) {
        array_push(global.errors, {time: timestamp, message: message, critical: critical});
    } else {
        global.errors = [{time: timestamp, message: message, critical: critical}];
    }
    
    // For critical errors, we could show a message to the player
    if (critical && !global.debug_mode) {
        // In release builds, show a user-friendly message
        show_message_async("An error occurred. Please restart the game.");
    } else if (critical && global.debug_mode) {
        // In debug builds, show the actual error
        show_message(message);
    }
}
