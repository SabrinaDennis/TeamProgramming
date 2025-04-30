// Then load dialog data
loadDialogData();

global.currentIndex = 0;
global.player.maxHealth=100;
global.player.health=global.player.maxHealth;
createBackground(bg_spr_background);

// Room Manager Script
populateAllObjects();
