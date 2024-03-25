	if(keyboard_check_pressed(ord("R")))
{

	menu = 1
	holdX = x;
	holdY = y;
	x = global.playerID.x;
	y = global.playerID.y;
	
}

if(menu)
{
	if(point_distance(holdX,holdY,mouse_x,mouse_y) < 250)
	{
		x = global.playerID.x + (mouse_x- holdX);
		y = global.playerID.y + (mouse_y- holdY);
	}
	else
	{
	x = global.playerID.x + 250*((mouse_x- holdX)/ sqrt(sqr(mouse_x- holdX) + sqr(mouse_y- holdY)));
	y = global.playerID.y + 250*((mouse_y- holdY)/ sqrt(sqr(mouse_x- holdX) + sqr(mouse_y- holdY)));
	}
	
	if(keyboard_check_released(ord("R")))
		menu = 0;
	return;
	
}
x = mouse_x;
y = mouse_y;







