if(other.death)
	return;


		audio_play_sound(impact,0,0);
instance_create_depth(x,y,-35,obj_Explosion);
other.hp -= 1;
if(other.hp <= 0)
{
	audio_play_sound(crabDeath,0,0,2)
	global.enemyAmnt -= 1;
	other.death = 1;
	other.sprite_index = sprite_large_death;
}
else
{
	instance_destroy()
}





