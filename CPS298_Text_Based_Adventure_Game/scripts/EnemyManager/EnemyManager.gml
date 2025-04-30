/// @function initEnemy
/// @description initializes the global.enemy struct (USE createEnemy INSTEAD!)
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function initEnemy(_name,_sprite,_health, _drops){
	global.enemy = {name: _name, sprite: _sprite, enemyHealth: _health, drops: _drops};
}

/// @function createEnemy
/// @description Initializes, then creates enemy instance
/// @param {real} _name Name of enemy
/// @param {any} _sprite Reference to sprite
/// @param {real} _health Full Enemy Health
function createEnemy(_name, _sprite,_health, _drops){
	// Conceptual Enemy (Just a global Struct)
	initEnemy(_name,_sprite,_health, _drops) 
	
	
	// Actual Enemy Object Instance
	global.enemyInstance = instance_create_depth(0,0,-1,obj_enemy,global.enemy) 
}

function createEnemyFromStruct(_enemyStruct){
	createEnemy(_enemyStruct.name, _enemyStruct.sprite, _enemyStruct.enemyHealth, _enemyStruct.drops);
}

/// @function enemyTakeDamage
/// @description Damages the current active enemy
/// @param {real} _amount Amount of damage dealt to the enemy
function enemyTakeDamage(_amount){
	if(global.enemy.enemyHealth - _amount <= 0){
		// enemy died
		global.enemy.enemyHealth = -1;
		show_debug_message("Enemy Died")
		instance_destroy(global.enemyInstance, true);
		audio_play_sound(ENTER_SFX,0,false);
		if(random(255)>127){
		find(global.enemy.drops);
		}
	if(instance_exists(obj_menu)){
		instance_activate_object(obj_menu)
	}
		
	}else{
		// enemy didn't die
		global.enemy.enemyHealth -= _amount
	}
}