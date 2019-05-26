draw_self();
if secildi==true
{
	draw_sprite(s_secildi,0,x,y);
}
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x-sprite_width/2, y-sprite_width/2-10, x+sprite_width/2, y-sprite_width/2-50, pc, c_black, c_blue, c_aqua, 0, true, true);