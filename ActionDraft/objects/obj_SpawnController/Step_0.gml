if(global.enemyAmnt == 0)
{	
	if(countdown)
	{
		countdown -= 1;
		return;
	}
	n = choose(1,2)
	for(i= 0; i < n; i++)
	{
	array_foreach(global.largeSpawnArray,
	function(v,i)
	{
		if(v.usable)
			array_push(selectArr,v);
	})
	l = array_length(selectArr)
	selectArr[random(l-1)].trigger = 1;
	}
	countdown = irandom_range(100,150)
}





