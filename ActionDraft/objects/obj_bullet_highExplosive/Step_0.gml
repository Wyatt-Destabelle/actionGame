t += 1;
if(abs(x-spotX) <= 16 && abs(y - spotY) <= 16)
{
	instance_create_depth(x,y,-1500,obj_airburst)
	instance_destroy()
}

if(t == 2)
{
	trail = instance_create_depth(0,0,0,trail_objShort);
	trail.image_angle = image_angle;
	trail.x = x;
	trail. y = y;
	t = 0;
}





