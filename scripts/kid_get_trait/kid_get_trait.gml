var trait = irandom_range(0, TRAITAMOUNT-1);
for(var i = 0; i < ds_list_size(global.taken_traits); i++) {
	if(global.taken_traits[| i] == trait) {
		trait = kid_get_trait();
		break; 
	}
}
ds_list_add(global.taken_traits, trait); 
return trait; 