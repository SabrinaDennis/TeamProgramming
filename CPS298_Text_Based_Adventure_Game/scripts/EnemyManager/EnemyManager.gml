/// @function initEnemy
/// @description initializes the global.enemy struct (USE createEnemy INSTEAD!)
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function initEnemy(_name,_sprite,_health){
	global.enemy = {name: _name, health: _health, sprite: _sprite}
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
	instance_create_depth(room_width/2,room_height/2,-1,obj_enemy,global.enemy) 
}

function createEnemyfromArray(_enemyArray){
	createEnemy(_enemyArray[0], _enemyArray[1], _enemyArray[2]);
}

/// @function enemyTakeDamage
/// @description Damages the current active enemy
/// @param {real} _amount Amount of damage dealt to the enemy
function enemyTakeDamage(_amount){
	if(global.enemy.health - _amount <= 0){
		// enemy died
		global.enemy.health = 0;
		show_debug_message("Enemy Died")
		
	}else{
		// enemy didn't die
		global.enemy.health -= _amount
	}
}