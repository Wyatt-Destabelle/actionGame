if(mouseFollow)
{
	x= mouse_x;
	y= mouse_y;
}
else
{
	image_alpha -= .05;
}
if(image_alpha < 0)
{
	instance_destroy()
}



