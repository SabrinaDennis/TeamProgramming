function initializePlayer(){
	global.playerMaxHealth = 100;
	global.playerHealth = 100;
	global.playerGold = 0;
	
}

function playerAddGold(amount){
	global.playerGold += amount;
}

function playerTakeDamage(damageTaken){
	if(!global.playerHealth - damageTaken >= 0){
		global.playerHealth -= damageTaken;
	}else{
		global.playerHealth = 0;
		show_debug_message("Player Died!");
	}
}

function playerAddHealth(healthToAdd){
	if(!global.playerHealth + healthToAdd > global.playerMaxHealth){
		global.playerHealth += healthToAdd;
	}else{
		global.playerHealth = global.playerMaxHealth
	}
}
