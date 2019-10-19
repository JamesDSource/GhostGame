/// Approach(val1, val2, amount)
/// @arg val1 to move towords val2
/// @arg val2 that val1 moves twords
/// @arg amount to move val1 twords val2 by 
 
if (argument0 < argument1)
{
    argument0 += argument2;
    if (argument0 > argument1)
        return argument1;
}
else
{
    argument0 -= argument2;
    if (argument0 < argument1)
        return argument1;
}
return argument0;