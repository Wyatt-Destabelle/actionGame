if(distance_to_object(global.playerID) < 1400 && distance_to_object(global.playerID) > 400)
{
	usable = 1;

}
else
{
	usable = 0;

}


if(trigger)
{
	global.enemyAmnt += 1;
	o = instance_create_depth(x,y,-2,obj_dropMarker)
	c = choose(1,2)
	if(c==1)
		o.objType = obj_enemy_large;
	else
		o.objType = obj_enemy_mortar;
	o.image_xscale = 2;
	o.image_yscale = 2;
	i = choose(0,1)
		global.enemyAmnt += 1;
		o = instance_create_depth(smallArr[i].x,smallArr[i].y,-2,obj_dropMarker)
	i = choose(2,3)
		global.enemyAmnt += 1;
		o = instance_create_depth(smallArr[i].x,smallArr[i].y,-2,obj_dropMarker)	
	i = choose(4,-1)
	if(i)
	{
		o = instance_create_depth(smallArr[i].x,smallArr[i].y,-2,obj_dropMarker)
		global.enemyAmnt += 1;
	}
	trigger = 0;
}







