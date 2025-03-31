/// @function createNewItem
/// @description Generate new item struct (To pass into the players inventory w/ playerAddItem function)
/// @param {real} _name Name of item
/// @param {real} _description Description of item
/// @param {any} _sprite Sprite Reference
function createNewItem(_name,_description,_sprite){
	return item = {name:name, sprite: _sprite, description: _description}
}


// This struct makes it so we can do global.itemList.(item name).(name,description,sprite) and its easy to manage
global.itemList = {
	largeKey: createNewItem("Large Key","This comically large key looks like it would fit into a comically large keyhole..", spr_key),
	smallKey: createNewItem("Large Key","This comically large key looks like it would fit into a comically large keyhole..", spr_key)
}





