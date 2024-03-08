if(death)
//die
{
	return;
}
if(mLock)
{
	mLock -= 1;
	if(kbackArray != 0)
	{
		x += lengthdir_x(kbackArray[mLock],direction);
		y += lengthdir_y(kbackArray[mLock],direction);
	}
	if(!mLock)
		kbackArray = 0;
		
	s = sAbs - sAbs*(mLock /mLockL);
}
moving = 0;
input_x = 0;
input_y = 0;

if(keyboard_check(ord("W")))
{
	input_y = -1;
	moving = 1;
}
else if(keyboard_check(ord("S")))
{
	input_y = 1;
	moving = 1;
}
if(keyboard_check(ord("A")))
{
	input_x = -1;
	moving = 1;
	d = -1
}
else if(keyboard_check(ord("D")))
{
	input_x = 1;
	moving = 1;
	d = 1;
}

if(moving)
{
	sprite_index = PlayerWalking;
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
	sprite_index = PlayerStanding;
}

if(abs(input_x) && abs(input_y))
{
	input_x = (input_x / sqrt(2));
	input_y = (input_y / sqrt(2));
}

x+= s* input_x;
y += s* input_y;

if(keyboard_check_pressed(ord("G")) && grenades)
{
	grenadePrimed = 1;
	grenadeID = instance_create_depth(mouse_x,mouse_y,0,obj_grenade_indicator);
}

if(keyboard_check_released(ord("G")) && grenadePrimed)
{
	grenadeID.mouseFollow = 0;
	grenadeID = instance_create_depth(x,y,-5,obj_grenade)
	grenadeID.targetX = mouse_x;
	grenadeID.targetY = mouse_y;
	grenadeID.direction = point_direction(x,y,mouse_x,mouse_y);
	grenadeID.speed = 6;
	grenadePrimed = 0
}





