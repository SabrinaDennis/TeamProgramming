// Make sure player is initialized first
initializePlayer();

// Initialize logging system after player
init_logging();

// Then load dialog data
loadDialogData();

global.currentIndex = 0;
createBackground(street_past);
// Room Manager Script
populateAllObjects();

/*
- How to add items to the players inventory
playerAddItem(global.itemList.largeKey)
playerAddItem(global.itemList.smallKey)
playerAddItem(global.itemList.woodenShield)

- How to create an enemy
createEnemy("jimbo", spr_enemy, 100)
*/
