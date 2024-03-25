if(other.death)
	return;



audio_play_sound(impact,0,0);
i= instance_create_depth(x,y,-5000,obj_smallImpact);
if(direction > 90 && direction < 270)
	i.image_xscale = -1;
other.hp -= 1;
if(other.hp <= 0)
{
	audio_play_sound(crabDeath,0,0,1.5)
	global.enemyAmnt -= 1;
	instance_destroy(other.id.gunID);
	other.direction = direction;

	other.speed = 5;

	other.death = 1;
	other.sprite_index = sprite_crab_death;
}

	instance_destroy()







