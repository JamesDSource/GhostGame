/// @chance(percentage)
/// @arg percentage that script will return true
randomize(); 
var random_number = irandom_range(1, 100);
if(random_number <= argument[0]) return true;
else return false;