name = name;
enemyHealth = enemyHealth;
sprite = sprite;

rects=[];
musicToReturnTo = global.currentSong;
playSong([rock_world, 0, true]);
if(sprite!=spr_eldritch_horror){
x=0;//random_range(sprite_get_width(sprite), room_width-sprite_get_width(sprite));
y=room_height*.2;
} else {x=0;y=0}

sprite_index=sprite