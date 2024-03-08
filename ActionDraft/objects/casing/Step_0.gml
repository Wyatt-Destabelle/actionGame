image_angle += rotateSpeed;

direction = lerp(direction,270, .1);
if(direction < 180)
speed -= .04;
else
speed += .1;

if(abs(y - startY) > 100)
{
speed = 0;
rotateSpeed = 0;
}




