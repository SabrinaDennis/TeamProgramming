/// @function initEnemy
/// @description initializes the global.enemy struct (USE createEnemy INSTEAD!)
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function initEnemy(_name,_sprite,_health){
	global.enemy = {name: _name, sprite: _sprite, enemyHealth: _health}
}

/// @function createEnemy
/// @description Initializes, then creates enemy instance
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function createEnemy(_name, _sprite,_health){
	// Conceptual Enemy (Just a global Struct)
	initEnemy(_name,_sprite,_health) 
	
	
	// Actual Enemy Object Instance
	global.enemyInstance = instance_create_depth(room_width/2,room_height*.75,-1,obj_enemy,global.enemy) 
}

function createEnemyfromArray(_enemyArray){
	createEnemy(_enemyArray[0], _enemyArray[1], _enemyArray[2]);
}

/// @function enemyTakeDamage
/// @description Damages the current active enemy
/// @param {real} _amount Amount of damage dealt to the enemy
function enemyTakeDamage(_amount){
	if(global.enemy.enemyHealth - _amount <= 0){
		// enemy died
		global.enemy.enemyHealth = 0;
		show_debug_message("Enemy Died")
		instance_destroy(global.enemyInstance, true);
		
	if(instance_exists(obj_menu)){
		instance_activate_object(obj_menu)
	}
		
	}else{
		// enemy didn't die
		global.enemy.enemyHealth -= _amount
	}
}