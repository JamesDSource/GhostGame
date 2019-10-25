surf_w = display_get_width()/8;
surf_h = display_get_height();
#macro OFFSCREENX -surf_w
draw_x = OFFSCREENX; 
stats_window = noone; 
global.show_stats = false;
kids = ds_list_create(); 
with(oKid) ds_list_add(other.kids, id); 