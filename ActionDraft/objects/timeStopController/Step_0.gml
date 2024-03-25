if(global.timeStop)
{
	game_set_speed(15,gamespeed_fps);
	global.timeStop -= 1;
	if(!global.timeStop)
		game_set_speed(60,gamespeed_fps);
}