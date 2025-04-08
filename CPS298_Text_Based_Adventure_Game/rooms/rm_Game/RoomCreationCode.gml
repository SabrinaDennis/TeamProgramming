// Make sure player is initialized first
initializePlayer();

// Then load dialog data
loadDialogData("dialog.json");

global.currentIndex = 0;

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
