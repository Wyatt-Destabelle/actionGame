if(sprite_index == Sprite48)
return;

other.hp -= 1;
global.cameraID.shakeIntensity = 8;
global.cameraID.shakeLength = 10;
if(!other.hp && !other.death)
{
other.death = 1;

instance_destroy(global.gunID)
other.sprite_index = Playerdeath;
}
sprite_index = Sprite48


