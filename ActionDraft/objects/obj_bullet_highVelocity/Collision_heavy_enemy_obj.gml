if(other.death)
	return;

trail = instance_create_depth(0,0,-4,trail_obj);
	trail.image_angle = image_angle;
	trail.x = x;
	trail. y = y;
		audio_play_sound(impact,0,0);
instance_create_depth(x,y,-35,obj_Explosion);
other.hp -= 1;
if(other.hp <= 0)
{
	other.death = 1;
	other.sprite_index = largeDeath;
}
else
{
	instance_destroy()
}





