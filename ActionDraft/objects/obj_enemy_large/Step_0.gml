if(death)
{
	
	speed = lerp(speed, 0,.1);
	return
}
depth = -y

if(timeOfMove)
{
	timeOfMove -= 1;
	xDir = x + lengthdir_x(moveSpeed,direction);
	yDir = y + lengthdir_y(moveSpeed,direction);
	if(place_meeting(xDir,yDir,global.collisionList))
		direction += 180;

		x = xDir;
		y = yDir;
		
	if(!timeOfMove)
	{
		image_speed = 1;
		if(image_xscale > 0)
			a = launchLocationLeft;
		else
			a = launchLocationRight;
			
			sprite_index = sprite_large_idle;
			timeStop = irandom_range(200,300)
			shoot = 4;
			reload = 15;
			
	}
}
else if(timeStop)
{
	if(x > global.playerID.x + 1500 || x < global.playerID.x - 1500 || y > global.playerID.y + 800 || y < global.playerID.y - 1000)
	{
	}
	else
	{
	if(shoot && !global.playerID.death)
		if(!reload)
			{
				audio_play_sound(launch,0,0)
				shoot -= 1;
				reload =30;
				sprite_index = launchSprites[shoot]
				instance_create_depth(x+ a[shoot],y-8,-7,missile_obj);
			}
		reload -= 1
	}
	timeStop -= 1;
}
else
{
	timeOfMove = irandom_range(90,300)
	if(distance_to_object(global.playerID) < 200)
	{
		playerD = point_direction(x,y,global.playerID.x, global.playerID.y);
		direction = irandom_range(90 - playerD, 270- playerD);
	}
	else 
	{
		playerD = point_direction(x,y,global.playerID.x, global.playerID.y);
		direction = irandom_range(playerD - 90, playerD + 90);
	}
	sprite_index = sprite_large_walk;
		if(direction > 90 && direction < 270)
		{
			if(playerD > 90 && playerD < 270)
			{
				image_xscale = 1.5;
				image_speed = 1;
			}
			else
			{
				image_xscale = -1.5;
				image_speed = -1;
			}
		}
		else
			{
			if(playerD > 90 && playerD < 270)
			{
				image_xscale = 1.5;
				image_speed = -1;
			}
			else
			{
				image_xscale = -1.5;
				image_speed = 1;
			}
		}
}