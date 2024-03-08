if(sprite_index == tombstone)
{
	sprite_index = tombstone2;
}
if(sprite_index == Playerdeath)
{
	instance_create_depth(x,y,-10,obj_Explosion);
		image_speed = 1;
	sprite_index = tombstone;

}





