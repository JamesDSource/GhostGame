cam = camera_create(); 

#macro VIEWWIDTH 640
#macro VIEWHEIGHT 480

var view_matrix = matrix_build_projection_ortho(VIEWWIDTH, VIEWHEIGHT, -10000000, 10000000);
camera_set_proj_mat(cam, view_matrix);
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam,vm);

view_camera[0] = cam; 

x_target = 0;
y_target = 0
slow = 20;

shake_magnitude = 0;
shake_frames = 0;
shake_remain = 0; 

follow = oPlayer; 