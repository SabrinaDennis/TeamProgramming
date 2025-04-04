initializePlayer();

loadDialogData("dialog.json");

global.currentIndex = 0;

// Room Manager Script
populateAllObjects();

createEnemy("jimbo",spr_enemy,100)
