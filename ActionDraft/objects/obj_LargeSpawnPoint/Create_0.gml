usable = 0;
if(variable_global_exists("largeSpawnArray"))
{
 array_push(global.largeSpawnArray,id);
}
else
{
	global.largeSpawnArray = array_create(1,id);
}

smallArr = [];

trigger = 0;






