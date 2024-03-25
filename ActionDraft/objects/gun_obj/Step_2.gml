x = global.playerID.x;
y = global.playerID.y;



if(keyboard_check_pressed(ord("R")))
{

	global.playerID.lock = 1;
	global.reloading = 0;
	i = instance_create_depth(global.playerID.x - 108,global.playerID.y,-10000,obj_Icon)
	i.sprite_index = HV_icon;
	i.ammo = 2;
	i = instance_create_depth(global.playerID.x,global.playerID.y-108,-10000,obj_Icon)
	i.sprite_index = RF_icon;
	i.ammo = 1;
	i = instance_create_depth(global.playerID.x + 108,global.playerID.y,-10000,obj_Icon)
	i.sprite_index = HE_icon;
	i.ammo = 3;

}
if(keyboard_check_released(ord("R")))
{
	if(global.reloading)
	{
		audio_play_sound(reload_sound,0,0);
		gLock = 60;
		ammo = global.reloading;
		instance_create_depth(x,y,-20000,obj_reload)
		
	}
	global.playerID.lock = 0;
	global.reloading = -1;

}
if(keyboard_check(ord("R")))
{
	return;	
}

image_angle = point_direction(x,y,mouse_x,mouse_y);
if(image_angle > 90 && image_angle < 270)
	image_yscale = -1
else 
	image_yscale = 1

if(soundTimer)
{
	soundTimer-= 1;
	if(!soundTimer)
		audio_play_sound(sound_reload,0,0);
	
}

if(gLock)
{
	gLock -= 1;
	//melee -= 1;
	return;
}


if(mouse_check_button(mb_left))
{
	
	sprite_index = gunfiring2;
	image_index = 0;
	switch(ammo)
	{
	case(1):
	global.playerID.mLock += 1;
	global.playerID.mLockL += 1;
	global.playerID.direction = image_angle - 180;
	global.playerID.speed = 8;
	gLock = 15;
	//soundTimer = 7;
	global.cameraID.shakeIntensity = 8;
	global.cameraID.shakeLength = 2;
	c = instance_create_depth(x,y,-15,obj_casing);
	c.startX = x;
	c.startY = y;
	c.image_xscale = .5
	c.image_yscale = .75
	audio_play_sound(sound_normal_gunshot,1,0,6);
	audio_play_sound(finalAir,1,0,.25);
	instance_create_depth(x + lengthdir_x(60,image_angle),y+ lengthdir_y(60,image_angle),0,obj_bullet_Normal);
	break;
	
	case(2):
	global.playerID.mLock += 10;
	global.playerID.mLockL += 10;
	global.playerID.direction = image_angle - 180;
	global.playerID.speed = 30;
	gLock = 120;
	soundTimer = 7;
	global.cameraID.shakeIntensity = 35;
	global.cameraID.shakeLength = 12;
	c = instance_create_depth(x,y,-15,obj_casing);
	c.startX = x;
	c.startY = y;
	t = instance_create_depth(x+ lengthdir_x(60,image_angle),y+ lengthdir_y(60,image_angle),0,trail_objone);
	t.image_angle = image_angle;
	audio_play_sound(sound_gunShotBass,1,0,6);
	audio_play_sound(finalAir,1,0,.25);
	instance_create_depth(x + lengthdir_x(60,image_angle),y+ lengthdir_y(60,image_angle),0,obj_bullet_highVelocity);
	break;
	
	case(3):
	global.playerID.mLock += 10;
	global.playerID.mLockL += 10;
	global.playerID.direction = image_angle - 180;
	global.playerID.speed = 20;
	gLock = 100;
	soundTimer = 7;
	global.cameraID.shakeIntensity = 10;
	global.cameraID.shakeLength = 5;
	c = instance_create_depth(x,y,-15,obj_casing);
	c.startX = x;
	c.startY = y;
	t = instance_create_depth(x+ lengthdir_x(60,image_angle),y+ lengthdir_y(60,image_angle),0,trail_objone);
	t.image_angle = image_angle;
	audio_play_sound(sound_gunShotBass,1,0,6);
	audio_play_sound(finalAir,1,0,.25);
	instance_create_depth(x + lengthdir_x(60,image_angle),y+ lengthdir_y(60,image_angle),0,obj_bullet_highExplosive);
	break;
	}
}
/*
else if(mouse_check_button_pressed(mb_right))
{
	melee = 30;
	gLock = 45;
	sprite_index = gun_spriteSwing
}
*/










