t += 1;
if(abs(x-spotX) <= 16 && abs(y - spotY) <= 16)
{
	speed = 0
	sprite_index = expl
	if(t < 3)
	{
		audio_play_sound(sound_airburst,0,0);
	}
	t = 3;
}

if(t == 2)
{
	trail = instance_create_depth(0,0,0,trail_objShort);
	trail.image_angle = image_angle;
	trail.x = x;
	trail. y = y;
	t = 0;
}





