x = global.playerID.x;
y = global.playerID.y;



image_angle = point_direction(x,y,mouse_x,mouse_y);
if(image_angle > 90 && image_angle < 270)
	image_yscale = -1
else 
	image_yscale = 1

if(soundTimer)
{
	soundTimer-= 1;
	if(!soundTimer)
		audio_play_sound(gun_reload_sound,0,0);
	
}
if(gLock)
{
	gLock -= 1;
	//melee -= 1;
	return;
}

if(mouse_check_button_pressed(mb_left))
{
	
	sprite_index = gunfiring;
	global.playerID.mLock += 10;
	global.playerID.mLockL += 10;
	global.playerID.direction = image_angle - 180;
	global.playerID.kbackArray = [0,0,1,1,2,3,4,10,14,20];
	gLock = 120;
	soundTimer = 7;
	global.cameraID.shakeIntensity = 25;
	global.cameraID.shakeLength = 10;
	c = instance_create_depth(x,y,-15,casing);
	c.startX = x;
	c.startY = y;
	t = instance_create_depth(x,y,0,trail_obj);
	t.image_angle = image_angle;
	audio_play_sound(gun_shot_bassBoosted,1,0,6);
	audio_play_sound(finalAir,1,0,.25);

	instance_create_depth(x + lengthdir_x(60,image_angle),y+ lengthdir_y(60,image_angle),0,obj_bullet_highVelocity);
}
/*
else if(mouse_check_button_pressed(mb_right))
{
	melee = 30;
	gLock = 45;
	sprite_index = gun_spriteSwing
}
*/










