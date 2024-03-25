image_angle += rotateSpeed;
directionSign = direction;
if(directionSign > 270)
{
	directionSign -= 360;
}
direction = lerp(directionSign,d, .1);
if(direction < 180)
speed -= .04;
else
speed += .1;

if(abs(y - startY) > 100)
{
depth = -2;
speed = 0;
rotateSpeed = 0;
}




