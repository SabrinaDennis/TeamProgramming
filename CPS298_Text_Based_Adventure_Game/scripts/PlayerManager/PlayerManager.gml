/// @function initializePlayer
/// @description Initializes the player variables (Health,Gold,Inventory)
global.player = {
	health: 100,
	maxHealth: 100,
	gold: 0,
	inventory: [],
	friendlist: []
}


/// @function playerAddGold
/// @description Add gold to the player
/// @param {real} _amount Amount of gold to add to the players gold.
function playerAddGold(_amount){
	global.player.gold += _amount;
}

/// @function playerTakeDamage
/// @description deal damage to the player
/// @param {real} _damageTaken Amount of damage to deal to the player.
function playerTakeDamage(_damageTaken){
	// Validate player exists
	if (!variable_global_exists("player")) {
		show_debug_message("Error: Cannot damage player - global.player not initialized");
		return;
	}
	
	// Validate player health exists
	if (!variable_struct_exists(global.player, "health")) {
		show_debug_messgae("ERROR: Player missing health property");
		return;
	}
	
	// Validate damage amount
	if (!is_real(_damageTaken)) {
		show_debug_message("WARNING: Player damage amount is not a number, using 1 as default");
		_damageTaken = 1;
	}
	
	// Apply damage with health bounds check
	if(!global.player.health - _damageTaken > 0){
		global.player.health -= _damageTaken;
	} else {
		global.player.health = 0;
		show_debug_message("Player Died!");
		// Trigger death event
		playerDeath(["You have been defeated in battle!"]);
	}
}

/// @function playerAddHealth
/// @description add health to player (heal)
/// @param {real} _healthToAdd Amount of health added to the players health pool.
function playerAddHealth(_healthToAdd){	
	if(!global.player.health + _healthToAdd > global.player.maxHealth){
		global.player.health += _healthToAdd;
	}else{
		global.player.health = global.player.maxHealth
	}
}

/// @function playerAddItem
/// @description Add item to the players inventory
/// @param {struct} _item This is the item to be added to the players inventory(createNewItem function or itemList.itemname)
function playerAddItem(_item){
	array_push(global.player.inventory , _item)
}


function playerDeath(_parameters){
	//destroyAllObjects();
	var _text = _parameters[0];
	log_error("Player Death Attempted...")
	textBox(_text, 20, 20);
	
	// This should be drawing the player but it doesn't seem to be working
	
}

