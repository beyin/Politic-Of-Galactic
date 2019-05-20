x+=(xTo-x)/25;
y+=(yTo-y)/25;
if follow!=noone
{
	xTo=follow.x;
	yTo=follow.y;
}
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);
pm=matrix_build_projection_ortho(genislik,yukseklik,1,10000);
camera_set_proj_mat(camera,pm);

if mouse_wheel_up()
{
	if genislik>400 //20
	{
		genislik=genislik*0.9;
		yukseklik=yukseklik*0.9;
	}
}
else if mouse_wheel_down()
{
	if genislik<20000 //100
	{
		genislik=genislik/0.80;
		yukseklik=yukseklik/0.80;
	}
}
if window_mouse_get_x() < window_get_width()*0.1
{
	if x>=-3000
	x-=point_distance(window_mouse_get_x(), 0, window_get_width()*0.1, 0)*genislik/5000;
}
else if window_mouse_get_x() > window_get_width()*0.9
{
	if x<=room_width+3000
	x+=point_distance(window_mouse_get_x(), 0, window_get_width()*0.9, 0)*genislik/5000;
}
if window_mouse_get_y() < window_get_height()*0.1
{
	if y>=-3000
	y-=point_distance(0, window_mouse_get_y(), 0, window_get_height()*0.1)*genislik/2000;
}
else if window_mouse_get_y() > window_get_height()*0.9
{
	if y<=room_height+3000
	y+=point_distance(0, window_mouse_get_y(), 0, window_get_height()*0.9)*genislik/2000;
}


if x<0 and window_mouse_get_x()>window_get_width()*0.1
{
	x+=point_distance(x,0,0,0)/10;
}
else if x>room_width and window_mouse_get_x()<window_get_width()*0.9
{
	x-=point_distance(x,0,room_width,0)/10;
}
if y<0 and window_mouse_get_y()>window_get_height()*0.1
{
	y+=point_distance(y,0,0,0)/10;
}
else if y>room_height and window_mouse_get_y()<window_get_height()*0.9
{
	y-=point_distance(y,0,room_height,0)/10;
}