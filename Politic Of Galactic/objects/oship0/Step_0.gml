	timer-=1;
	timerhp-=1;
	if timer<=0
	timer=room_speed/2-irandom_range(0,40);
	if timerhp<=0
	timerhp=room_speed*0.5;
	
	if timerhp==20 and hp<=99
	hp+=1;
	
	if mouse_check_button_released(mb_left)and x>=global.arax1 and x<=global.arax2 and y>=global.aray1 and y<=global.aray2
	secildi=true;
	else if mouse_check_button_released(mb_left) and point_distance(x,y,mouse_x,mouse_y)<50
	secildi=true;
	else if mouse_check_button(mb_left)
	secildi=false;
	if global.hepsinisec1==true
	secildi=true;
	
	
	if !mouse_check_button(mb_left) and !mouse_check_button_released(mb_left)
	{
	global.arax1=mouse_x;
	global.arax2=mouse_y;
	global.aray1=mouse_x;
	global.aray2=mouse_y;
	}
if (secildi==true or global.hepsinisec1==true) and mouse_check_button_pressed(mb_right) and mouse_x>0 and mouse_x<room_width and mouse_y>0 and mouse_y<room_height
{
	xx=mouse_x;
	yy=mouse_y;
	gidisx=xx+choose(-200,-150,-100,-50,0,50,100,150,200);
	gidisy=yy+choose(-200,-150,-100,-50,0,50,100,150,200);
}
if distance_to_point(gidisx,gidisy)<=300
move_towards_point(gidisx,gidisy,distance_to_point(gidisx,gidisy)/40);
else if distance_to_point(gidisx,gidisy)>300
move_towards_point(gidisx,gidisy,15+random_range(0,1));
image_angle = point_direction(x, y, gidisx,gidisy);
if distance_to_object(instance_nearest(x,y,oship1))<3000
{
	if timer==choose(5,10,25,45)
	instance_create_layer(x,y,"Instances",oMermi);
}
if hp<=0
instance_destroy();
	haritax=x/room_width*300;
	haritay=y/room_height*300;