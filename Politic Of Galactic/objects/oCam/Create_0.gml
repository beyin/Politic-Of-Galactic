camera = camera_create();
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(1920, 1080, 1, 10000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);
view_camera[0]=camera;
follow=oCam;
xTo=x;
yTo=y;
genislik=8000;
yukseklik=6000;
window_set_size(1920,1080);
display_set_gui_size(1920,1080);
audio_play_sound(muzik,10,true);
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if layer_background_get_sprite(back_id) != arkaplan
{
	layer_background_sprite(back_id, arkaplan);
	layer_background_index(back_id,choose(0,1,2,3,4));
}
renk=c_blue;