//draw_sprite(pause,0,display_get_gui_width()/2,50);
draw_text(0,20,"Press ESC for Fullscreen on/off");
draw_text_color(0,50,"Use Mouse while up/down, movement",c_yellow,c_yellow,c_white,c_yellow,0.8);
draw_text(0,80,"You can see camera move back if u go to border of map");

for(var sayi=0; sayi<instance_number(oship0);sayi+=1)
{
	draw_line_width_color(display_get_width()-200+sayi*10,125,display_get_width()-190+sayi*10,75,4,c_blue,c_aqua);
}
for(var sayi1=0; sayi1<instance_number(oship01);sayi1+=1)
{
	draw_line_width_color(display_get_width()-200+sayi1*10,195,display_get_width()-190+sayi1*10,145,5,c_blue,c_aqua);
}

if instance_exists(oship0)
{
	draw_rectangle_color(display_get_width()-300,70,display_get_width()-5,130,renk1,renk1,renk1,renk1,true);
	draw_sprite(object_get_sprite(oship1),1,display_get_width()-250,100);
	if window_mouse_get_x()>=display_get_width()-300 and window_mouse_get_x()<=display_get_width()-5 and window_mouse_get_y()>=70 and window_mouse_get_y()<=130 and mouse_check_button_released(mb_left)
	global.hepsinisec1=true;
	else if mouse_check_button_pressed(mb_left)
	global.hepsinisec1=false;
}


if instance_exists(oship01)
{
	draw_rectangle_color(display_get_width()-300,140,display_get_width()-5,200,renk2,renk2,renk2,renk2,true);
	draw_sprite_stretched(object_get_sprite(oship01),1,display_get_width()-300,140,100,56);
	if window_mouse_get_x()>=display_get_width()-300 and window_mouse_get_x()<=display_get_width()-5 and window_mouse_get_y()>=135 and window_mouse_get_y()<=195 and mouse_check_button_released(mb_left)
	global.hepsinisec2=true;
	else if mouse_check_button_pressed(mb_left)
	{
		global.hepsinisec2=false;
	}
	if window_mouse_get_x()>=window_get_width()-150 and window_mouse_get_x()<=window_get_width()-10 and window_mouse_get_y()>=160 and window_mouse_get_y()<=180 and mouse_check_button_released(mb_left)
	global.jumpingmode=true;
	draw_text(display_get_width()-150,165,"click for jump");
	draw_rectangle_color(window_get_width()-155,185,window_get_width()-10,160,c_red,c_red,c_red,c_red,true);
}
if global.hepsinisec1==true
renk1=c_white;
else if global.hepsinisec1==false
renk1=c_blue;
if global.hepsinisec2==true
renk2=c_white;
else if global.hepsinisec2==false
renk2=c_blue;
draw_rectangle_color(window_get_width()-300,window_get_height()-300,window_get_width(),window_get_height(),c_white,c_white,c_white,c_white,true);