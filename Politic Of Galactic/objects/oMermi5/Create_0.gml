image_speed=0;
image_index=5;
gidisx=instance_nearest(x,y,oship0).x+random_range(-distance_to_object(instance_nearest(x,y,oship0))/10,distance_to_object(instance_nearest(x,y,oship0))/10);
gidisy=instance_nearest(x,y,oship0).y+random_range(-distance_to_object(instance_nearest(x,y,oship0))/10,distance_to_object(instance_nearest(x,y,oship0))/10);
image_angle = point_direction(x, y, gidisx,gidisy);
move_towards_point(gidisx,gidisy,50);