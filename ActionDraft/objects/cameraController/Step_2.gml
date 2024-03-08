x = lerp(global.playerID.x,mouse_x,0.1)
y = lerp(global.playerID.y,mouse_y,0.1)

if(shakeLength)
{
	x += choose(shakeIntensity,-shakeIntensity)
	y += choose(shakeIntensity,-shakeIntensity)
	shakeLength -= 1;
}
camera_set_view_pos(view_camera[0],x-cameraWidth,y-cameraHeight);


if(keyboard_check_pressed(ord("L")))
{
	instance_create_depth(mouse_x,mouse_y,-3,heavy_enemy_obj);
}
if(keyboard_check_pressed(ord("P")))
{
	instance_create_depth(mouse_x,mouse_y,-3,spider_enemy_obj);
}


