if(death)
{
	
	speed = lerp(speed, 0,.1);
	return
}

depth = -y;

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
		mortarPhase = 60;
		shotsLeft = 10
	}
}
else if(mortarPhase)
{
	if(shotsLeft)
	{
		if(!reload)
		{
			audio_play_sound(mortarSound,0,0,.75);
		sprite_index =mortarFire
		d = irandom_range(-50,50);
		d2 = irandom_range(-50,50);
		instance_create_depth(global.playerID.x + d,global.playerID.y + d2,0,obj_artillery_indicator);
		reload = 20;
		shotsLeft -= 1;
		}
		reload -= 1;
	}
	else 
	{
		mortarPhase -= 1;
	}
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
	sprite_index = mortarWalk;
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