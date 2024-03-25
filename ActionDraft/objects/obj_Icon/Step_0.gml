

if(born)
{
	if(image_xscale < 1)
	{
		image_xscale += .1;
		image_yscale += .1;
	}
		
	if(image_alpha < .75)
	{
		image_alpha += .1;
	}
	if(image_alpha >= .75 && image_xscale >= 1)
	{
		born =0;
		image_xscale = 1;
		image_yscale = 1;
		image_alpha = .75;
	}
	return;
}

if(place_meeting(x,y,obj_cursor))
{
	if(global.reloading == 0)
	{
		global.reloading = ammo;
		grow = 1;
	}

}
else
{
	if(global.reloading == ammo)
		global.reloading = 0;
	grow = 0;
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = .75;
}

if(grow)
{
	if(image_xscale < 1.25)
	{
		image_xscale += .03;
		image_yscale += .03;
	}
		
	if(image_alpha != 1)
	{
		image_alpha += .035;
	}
}

if(!keyboard_check(ord("R")))
	instance_destroy()