
	array_push(rects, [mouse_x-x, mouse_y-y, random(255)]);
	
	if(sprite!=spr_eldritch_horror){
		x=random_range(.6*sprite_width, room_width-.6*sprite_width);
	} else {
		x=0; y=0;
	}
	enemyTakeDamage(getFirstWeapon().damage);
	
	audio_play_sound(hitting,0,false);
	
if(random(20)>17){
	playerTakeDamage(1)  //damage the player with the amount of health the enemy has.
	audio_play_sound(hitBack, 0, false);
}