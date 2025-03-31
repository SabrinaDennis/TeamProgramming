/// @function initializePlayer
/// @description Initializes the player variables (Health,Gold)
function initializePlayer(){
	global.playerMaxHealth = 100;
	global.playerHealth = 100;
	global.playerGold = 0;
}

/// @function playerAddGold
/// @description Add gold to the player
/// @param {real} _amount Amount of gold to add to the players gold.
function playerAddGold(_amount){
	global.playerGold += _amount;
}

/// @function playerTakeDamage
/// @description deal damage to the player
/// @param {real} _damageTaken Amount of damage to deal to the player.
function playerTakeDamage(_damageTaken){
	if(!global.playerHealth - _damageTaken >= 0){
		global.playerHealth -= _damageTaken;
	}else{
		global.playerHealth = 0;
		show_debug_message("Player Died!");
	}
}


/// @function playerAddHealth
/// @description add health to player (heal)
/// @param {real} _healthToAdd Amount of health added to the players health pool.
function playerAddHealth(_healthToAdd){	
	if(!global.playerHealth + _healthToAdd > global.playerMaxHealth){
		global.playerHealth += _healthToAdd;
	}else{
		global.playerHealth = global.playerMaxHealth
	}
}
