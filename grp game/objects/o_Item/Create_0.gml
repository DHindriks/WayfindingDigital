event_inherited();

cell_size = 32;
item_spr = sItems;
spr_width = sprite_get_width(item_spr);
spr_height = sprite_get_height(item_spr);

x_offset = cell_size/2;
y_offset = cell_size*(2/3);

drop_move   = true;
var itemdir = irandom_range(0,259);
var len     = 32;
goal_x      = x + lengthdir_x(len, itemdir);
goal_y      = y + lengthdir_y(len, itemdir);