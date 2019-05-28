image_speed=0;
image_index=choose(0,1,2);
gemi=oship1;
if instance_nearest(x,y,gemi).image_angle<=90 //sağ üst
{
	eklex=90-instance_nearest(x,y,gemi).image_angle;//90 0
	ekley=instance_nearest(x,y,gemi).image_angle;//0 +90
	gidisx=instance_nearest(x,y,gemi).x+random_range(-eklex/2, eklex*3);
	gidisy=instance_nearest(x,y,gemi).y+random_range(-ekley*3, ekley/2);
}
else if instance_nearest(x,y,gemi).image_angle>90 and instance_nearest(x,y,gemi).image_angle<=180 //sol üst
{
	eklex=instance_nearest(x,y,gemi).image_angle-90;//0 90
	ekley=180-instance_nearest(x,y,gemi).image_angle;//90 0
	gidisx=instance_nearest(x,y,gemi).x+random_range(-eklex*3, eklex/2);
	gidisy=instance_nearest(x,y,gemi).y+random_range(-ekley*3, ekley/2);
}
else if instance_nearest(x,y,gemi).image_angle>180 and instance_nearest(x,y,gemi).image_angle<=270 //sol alt
{
	eklex=270-instance_nearest(x,y,gemi).image_angle;
	ekley=instance_nearest(x,y,gemi).image_angle-180;
	gidisx=instance_nearest(x,y,gemi).x+random_range(-eklex*3, eklex/2);
	gidisy=instance_nearest(x,y,gemi).y+random_range(-ekley/2, ekley*3);
}
else if instance_nearest(x,y,gemi).image_angle>270 and instance_nearest(x,y,gemi).image_angle<=360 //sağ alt
{
	eklex=instance_nearest(x,y,gemi).image_angle-270;
	ekley=360-instance_nearest(x,y,gemi).image_angle;
	gidisx=instance_nearest(x,y,gemi).x+random_range(-eklex/2, eklex*3);
	gidisy=instance_nearest(x,y,gemi).y+random_range(-ekley/2, ekley*3);
}
image_angle = point_direction(x, y, gidisx,gidisy);
move_towards_point(gidisx,gidisy,50+irandom_range(-5,10));