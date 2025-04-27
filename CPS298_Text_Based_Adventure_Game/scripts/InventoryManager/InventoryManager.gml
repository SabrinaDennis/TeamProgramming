/// @function createNewItem
/// @description Generate new item struct (To pass into the players inventory w/ playerAddItem function)
/// @param {real} _name Name of item
/// @param {real} _description Description of item
/// @param {any} _sprite Sprite Reference
function createNewItem(_name,_description,_sprite){
	var item = {name: _name, sprite: _sprite, description: _description}
	return item
}

// This struct makes it so we can do global.itemList.(item name).(name,description,sprite) and its easy to manage
global.itemList = {
	brassKey : createNewItem("Brass Key","This key is strangely wrought..", spr_key),
	cinnamonBun : createNewItem("Cinnamon Bun","A delicious cinnamon bun, it smells so good..", undefined),
	banana : createNewItem("Banana", "A South American Berry with a fascinating history..", undefined),
	largeKey : createNewItem("Large Key","This comically large key looks like it would fit into a comically large keyhole..", spr_key),
	smallKey : createNewItem("Small Key","This comically small key looks like it would fit into a comically small keyhole..", spr_key),
	woodenShield : createNewItem("Wooden Shield","This might block a few acorns..", spr_key)
}








