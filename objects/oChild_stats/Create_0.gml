global.taken_traits = ds_list_create(); 
surf_w = display_get_width()/4;
surf_h = display_get_height();
#macro OFFSCREENX -surf_w
draw_x = OFFSCREENX; 
stats_window = noone; 
global.show_stats = false;
kids = ds_list_create(); 
with(oKid) ds_list_add(other.kids, id); 
traits[TRAIT.Coward] = "Coward"; 
traits[TRAIT.Inquisitive] = "Inquisitive";
traits[TRAIT.GoodHearing] = "Good Hearing"; 
traits[TRAIT.Greedy] = "Greedy";
traits[TRAIT.Leader] = "Leader"; 

anxiety[ANXIETY.Calm] = "Calm";
anxiety[ANXIETY.OnEdge] = "On Edge";
anxiety[ANXIETY.Anxious] = "Anxious";
anxiety[ANXIETY.Terrified] = "Terrified";
