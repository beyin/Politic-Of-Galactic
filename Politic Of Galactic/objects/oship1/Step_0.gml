timer-=1;
if timer<=0
timer=room_speed*0.5-irandom_range(0,40);
if hp<=0
instance_destroy();
	if distance_to_point(gidisx,gidisy)<500
	move_towards_point(gidisx,gidisy,distance_to_point(gidisx,gidisy)/50);
	if distance_to_object(instance_nearest(x,y,oship0))<3000
	{
		if timer==choose(5,10,15,20)
		instance_create_layer(x,y,"Instances",oMermi3);
	}
	if distance_to_object(instance_nearest(x,y,oship01))<3000
	{
		if timer=choose(5,15,25,35)
		instance_create_layer(x,y,"Instances",oMermi4);
	}
	image_angle = point_direction(x, y, gidisx, gidisy);
	haritax=x/room_width*300;
	haritay=y/room_height*300;