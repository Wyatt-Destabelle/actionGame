if(death)
{
	
	speed = lerp(speed, 0,.1);
	if(speed == 0)
	{
		s = layer_sprite_create("bodies",x,y,crab_Front_Scrap_Sprite);
		instance_destroy();
	}
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
			sprite_index = crab_idle;
			timeStop = irandom_range(15,30)
			reload = irandom_range(6,13);
			shoot = 1;
			
	}
}
else if(timeStop)
{
	
	if(shoot && !global.playerID.death && distance_to_object(global.playerID) < 1200)
	{
		if(!reload)
			{
				gunID.sprite_index = crabGunShot
				
				gunID.fire = 1;
				shoot -= 1;
			}
	}
		reload -= 1
	timeStop -= 1;
}
else
{
	timeOfMove = irandom_range(20,60)
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
		sprite_index = crab_walk;
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