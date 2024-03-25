if(other.death)
	return;


audio_play_sound(impact,0,0);

i = instance_create_depth(x,y,-5000,obj_smallImpact);
if(direction > 90 && direction < 270)
	i.image_xscale = -1;
other.hp -= .33;
if(other.hp <= 0)
{
	audio_play_sound(crabDeath,0,0,2)
	global.enemyAmnt -= 1;
	other.death = 1;
	other.sprite_index = sprite_large_death;
}
instance_destroy()






