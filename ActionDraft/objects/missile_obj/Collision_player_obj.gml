
if(!other.death)
{
other.death = 1;

instance_destroy(global.gunID)
other.sprite_index = Playerdeath;
}
	instance_create_depth(x,y,0,obj_Explosion);
instance_destroy();







