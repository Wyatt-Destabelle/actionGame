x = lerp(global.playerID.x,mouse_x,0.1)
y = lerp(global.playerID.y,mouse_y,0.1)

if(shakeLength)
{
	x += choose(shakeIntensity,-shakeIntensity)
	y += choose(shakeIntensity,-shakeIntensity)
	shakeLength -= 1;
}
camera_set_view_pos(view_camera[0],x-cameraWidth,y-cameraHeight);






