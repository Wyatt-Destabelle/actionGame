playerD = point_direction(x,y,global.playerID.x,global.playerID.y);
if(x > global.playerID.x + 1500 || x < global.playerID.x - 1500 || y > global.playerID.y + 800 || y < global.playerID.y - 1000)
	instance_destroy();
	
	

if(upState > -1)
{
	speed -= 1;
	upState -= 1;
}
if(turnState)
{
		
if(abs(angle_difference(playerD, d)) > 2)
{
	d += angle_difference(playerD, d) * 0.165;
	image_angle = d - 90;
}
else
{
	audio_play_sound(missile_launch_sound,0,0)
	upState = 0;
	direction = d;
	speed = 32;
	turnState = 0;
}
return;
}

	trail = instance_create_depth(0,0,0,missile_trail);
	trail.image_angle = image_angle;
	trail.x = x;
	trail. y = y;
direction += angle_difference(playerD, direction) * 0.015;
image_angle = direction - 90;



