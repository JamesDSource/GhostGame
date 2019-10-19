/// @desc change_xscale(target)
/// @arg target xscale
var change = 0.25;
image_xscale = approach(image_xscale, argument[0], change);