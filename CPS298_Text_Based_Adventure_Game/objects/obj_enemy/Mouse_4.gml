
	array_push(rects, [mouse_x-x, mouse_y-y, random(255)]);
	x=random_range(sprite_get_width(sprite)*.5, room_width-sprite_get_width(sprite)*.5 );
	enemyTakeDamage(getFirstWeapon().damage);
	
	audio_play_sound(hitting,0,false);
	
if(random(20)>17){
		playerTakeDamage(1)  //damage the player with the amount of health the enemy has.
	audio_play_sound(hitBack, 0, false);
	}