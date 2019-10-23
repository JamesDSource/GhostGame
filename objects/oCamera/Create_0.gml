cam = camera_create(); 

#macro VIEWWIDTH display_get_width()/2
#macro VIEWHEIGHT display_get_height()/2

var view_matrix = matrix_build_projection_ortho(VIEWWIDTH, VIEWHEIGHT, -10000000, 10000000);
camera_set_proj_mat(cam, view_matrix);
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam,vm);
view_set_wport(0, VIEWWIDTH);
view_set_hport(0, VIEWHEIGHT);
surface_resize(application_surface, VIEWWIDTH, VIEWHEIGHT);
display_set_gui_size(display_get_width(), display_get_height()); 
view_camera[0] = cam; 


x_target = 0;
y_target = 0
slow = 20;

shake_magnitude = 0;
shake_frames = 0;
shake_remain = 0; 

follow = oPlayer; 