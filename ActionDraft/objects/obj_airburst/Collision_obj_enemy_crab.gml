if(other.death)
	return;
instance_destroy(other.id.gunID);
other.direction = point_direction(x,y,other.x,other.y);

other.speed = 15;
if(!other.death)
{
global.enemyAmnt -= 1;
e = instance_create_depth(x,y,-35,obj_ExplosionCrab);
e.crab = other.id;
if(point_direction(x,y,other.x,other.y) >90 && point_direction(x,y,other.x,other.y) < 270)
	e.image_xscale = -1;
other.death = 1;
other.sprite_index = sprite_crab_death;
}

