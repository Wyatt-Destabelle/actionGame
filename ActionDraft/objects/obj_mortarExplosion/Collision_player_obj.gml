if(u)
	return;

u = 1;
global.timeStop = 2;
other.hp -= 1;
global.cameraID.shakeIntensity = 20;
global.cameraID.shakeLength = 3;
if(!other.hp && !other.death)
{
other.death = 1;

instance_destroy(global.gunID)
other.sprite_index = Playerdeath;
}



