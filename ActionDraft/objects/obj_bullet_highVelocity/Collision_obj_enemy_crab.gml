
instance_destroy(other.id.gunID);
other.direction = direction;

other.speed = 15;
if(!other.death)
{
	audio_play_sound(crabDeath,0,0,1.5)
global.enemyAmnt -= 1;
e = instance_create_depth(x,y,-35,obj_ExplosionCrab);
e.crab = other.id;
e.image_angle = direction
if(direction >90 && direction < 270)
	e.image_yscale = -1;
other.death = 1;
other.sprite_index = sprite_crab_death;
}




