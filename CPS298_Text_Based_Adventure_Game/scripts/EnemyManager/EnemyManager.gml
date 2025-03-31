function createEnemy(_name, _sprite){
	
	var init_enemy_stats = {
		name: _name,
	    health: 100,
	    sprite: _sprite
	};
	
	
	instance_create_depth(room_width/.8,room_height/2,1,obj_enemy,init_enemy_stats)
}