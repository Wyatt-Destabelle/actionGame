x = yourCrab.x+3
y = yourCrab.y-15

depth = -y - 50;
playerD = point_direction(x,y,global.playerID.x,global.playerID.y);
image_angle += angle_difference(playerD, image_angle) * 0.15;

if(image_angle > 90 && image_angle < 270)
	image_yscale = -2;
else
	image_yscale = 2;
if(fire)
{
bullet = instance_create_depth(x,y,-6,obj_enemy_bullet);
				audio_play_sound(enemyShot,0,0)
				bullet.direction = image_angle + random_range(-2,2);
				bullet.speed = 14
				bullet.image_angle = bullet.direction;
fire = 0;
}
