timer-=1;
if timer<=0
timer=room_speed*0.5-irandom_range(0,40);
if hp<=0
instance_destroy();

	if distance_to_object(instance_nearest(x,y,oship0))<2000 or distance_to_object(instance_nearest(x,y,oship01))<2000
	{
		if timer==choose(5,20,35,50)
		instance_create_layer(x,y,"Instances",choose(/*oMermi3,oMermi4,*/oMermi5));
	}