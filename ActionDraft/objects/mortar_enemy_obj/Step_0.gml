if(timeOfMove)
{
	timeOfMove -= 1;
	x = x + lengthdir_x(moveSpeed,direction);
	y = y + lengthdir_y(moveSpeed,direction);
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
	timeOfMove = irandom_range(80,300)
	playerD = point_direction(x,y,global.playerID.x, global.playerID.y);

	if(distance_to_object(global.playerID) < 600)
	{
		direction = irandom_range(90 - playerD, 270- playerD);
		moveSpeed = 1;
	}
	else 
	{
		direction = irandom_range(playerD - 90, playerD + 90);
		moveSpeed = 0.5;
	}
}

