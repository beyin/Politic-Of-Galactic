image_speed=0;
image_index=4;
if instance_exists(oship0) and instance_exists(oship01)
{
	if distance_to_object(instance_nearest(x,y,oship0))<distance_to_object(instance_nearest(x,y,oship01))
	{
		gemi=oship0;
	}
	else if distance_to_object(instance_nearest(x,y,oship0))>=distance_to_object(instance_nearest(x,y,oship01))
	{
		gemi=oship01;
	}
}
else if instance_exists(oship0) and !instance_exists(oship01)
gemi=oship0;
else if !instance_exists(oship0) and instance_exists(oship01)
gemi=oship1;
gidisx=instance_nearest(x,y,gemi).x+random_range(-distance_to_object(instance_nearest(x,y,gemi))/8,distance_to_object(instance_nearest(x,y,gemi))/8);
gidisy=instance_nearest(x,y,gemi).y+random_range(-distance_to_object(instance_nearest(x,y,gemi))/8,distance_to_object(instance_nearest(x,y,gemi))/8);
image_angle = point_direction(x, y, gidisx,gidisy);
move_towards_point(gidisx,gidisy,50+irandom_range(-5,5));