x = lerp(global.playerID.x,mouse_x,0.1)
y = lerp(global.playerID.y,mouse_y,0.1)

if(x < cameraWidth)
	x = cameraWidth;
else if(x > (room_width - (cameraWidth)))
	x = room_width - cameraWidth

if(y < cameraHeight +64)
	y = cameraHeight +64;
else if(y > (room_height - (cameraHeight)))
	y = room_height - (cameraHeight)


if(shakeLength)
{
	x += choose(shakeIntensity,-shakeIntensity)
	y += choose(shakeIntensity,-shakeIntensity)
	shakeLength -= 1;
}


camera_set_view_pos(view_camera[0],x-cameraWidth,y-cameraHeight);


if(keyboard_check_pressed(ord("L")))
{
	instance_create_depth(mouse_x,mouse_y,-3,obj_enemy_large);
}
if(keyboard_check_pressed(ord("P")))
{
	instance_create_depth(mouse_x,mouse_y,-3,obj_enemy_crab);
}


