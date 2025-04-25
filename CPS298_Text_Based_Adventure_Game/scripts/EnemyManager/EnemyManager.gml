/// @function initEnemy
/// @description initializes the global.enemy struct (USE createEnemy INSTEAD!)
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function initEnemy(_name, _sprite, _health){
    global.enemy = {name: _name, health: _health, sprite: _sprite}
}

/// @function createEnemy
/// @description Initializes, then creates enemy instance
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function createEnemy(_name, _sprite, _health){
    // Validate parameters
    if (_name == undefined || _name == "") {
        show_debug_message("WARNING: Enemy name is undefined or empty, using default name");
        _name = "Unknown Enemy";
    }
    
    if (!sprite_exists(_sprite)) {
        show_debug_message("WARNING: Enemy sprite does not exist, using fallback sprite");
        _sprite = spr_enemy; // Make sure this sprite exists
    }
    
    if (!is_real(_health) || _health <= 0) {
        show_debug_message("WARNING: Invalid health value for enemy, using default value");
        _health = 100; // Default health
    }
    
    // Conceptual Enemy (Just a global Struct)
    initEnemy(_name, _sprite, _health);
    
    // Actual Enemy Object Instance with error handling
    var enemy_instance = instance_create_depth(room_width/1.2, room_height/2, -1, obj_enemy, global.enemy);
    if (!instance_exists(enemy_instance)) {
        show_debug_message("ERROR: Failed to create enemy instance");
    }
}

/// @function enemyTakeDamage
/// @description Damages the current active enemy
/// @param {real} _amount Amount of damage dealt to the enemy
function enemyTakeDamage(_amount){
    // Validate global.enemy exists
    if (!variable_global_exists("enemy")) {
        show_debug_message("ERROR: Cannot damage enemy - global.enemy not initialized");
        return;
    }
    // Validate enemy is a valid struct
    if (!is_struct(global.enemy)) {
        show_debug_message("ERROR: Cannot damage enemy - global.enemy is not a valid struct");
        return;
    }
    // Validate amount is a number
    if (!is_real(_amount)) {
        show_debug_message("WARNING: Enemy damage amount is not a number, using 1 as default");
        _amount = 1;
    }
    
    if(global.enemy.health - _amount <= 0){
        // enemy died
        global.enemy.health = 0;
        show_debug_message("Enemy Died");
    } else {
        // enemy didn't die
        global.enemy.health -= _amount;
    }
}
