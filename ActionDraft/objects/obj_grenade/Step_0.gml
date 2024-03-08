timer -= 1;


if(place_meeting(x,y,obj_bullet_highVelocity))
{
	instance_create_depth(x,y,-10,obj_Explosion);
	instance_destroy();
}

if(!timer)
{
	instance_create_depth(x,y,-10,obj_Explosion);
	instance_destroy();
}
if(hit)
{
	if(place_meeting(x,y,global.collisionList))
	{
		instance_create_depth(x,y,-10,obj_Explosion);
		instance_destroy();
	}
	return;
}

if(abs(x - targetX) < 13 && abs(y - targetY) < 13)
{
	speed = 0;
}




