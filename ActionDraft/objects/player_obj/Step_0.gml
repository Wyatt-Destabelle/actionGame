depth = -y;
if(death)
{
	if(!dm)
		dm = instance_create_depth(global.cameraID.x,global.cameraID.y,-7000,obj_deathManager)
	return;
}
if(speed > 0)
{
	speed = lerp(speed,0,slowSpeed)
}
if(lock)
{
	sprite_index = sprite_player_standing;
	return;
}


if(mLock)
{
	mLock -= 1;

		
	s = sAbs - sAbs*(mLock /mLockL);
}
moving = 0;
input_x = 0;
input_y = 0;

if(keyboard_check(ord("W")))
{
	input_y = -1;
	moving = 1;
		if(place_meeting(x+20,y-10,global.collisionList) && place_meeting(x-20,y-10,global.collisionList))
	{
			input_y = 0;
		moving = 0;
	}
}
else if(keyboard_check(ord("S")))
{
	input_y = 1;
	moving = 1;
	if(place_meeting(x+20,y+10,global.collisionList) && place_meeting(x-20,y+10,global.collisionList))
	{
			input_y = 0;
		moving = 0;
	}
}
if(keyboard_check(ord("A")))
{

	d = -1
		if(place_meeting(x-30,y+30,global.collisionList) && place_meeting(x-30,y-30,global.collisionList))
	{
		input_x = 0;
		moving = moving;
	}
	else
	{
			input_x = -1;
			moving = 1;
	}
}
else if(keyboard_check(ord("D")))
{

	d = 1;
		if(place_meeting(x+30,y+30,global.collisionList) && place_meeting(x+30,y-30,global.collisionList))
	{
		input_x = 0;
		moving = moving;
	}
	else
	{
			input_x = 1;
			moving = 1;
	}
}

if(moving)
{
	sprite_index = sprite_player_walking;
	if(d)
	{	
		if(mouse_x > x)
		{
			image_xscale = 1;
			image_speed = 1;
		}
		else
		{
			image_xscale = -1;
			image_speed = -1;
		}
	}
	else 
	{
		if(mouse_x < x)
		{
			image_xscale = -1;
			image_speed = 1;
		}
		else
		{
			image_xscale = 1;
			image_speed = -1;
		}
	}
}
else
{
	sprite_index = sprite_player_standing;
}

if(abs(input_x) && abs(input_y))
{
	input_x = (input_x / sqrt(2));
	input_y = (input_y / sqrt(2));
}

x+= s* input_x;
y += s* input_y;





