depth = -1;
scale = 2;
cell_size = 32;
show_inventory = false;

inv_slots = 17;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;


x_buffer = 2;
y_buffer = 4


gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
inv_UI_width = 288;
inv_UI_height = 192;

spr_inv_UI = sInvetorylayout;
spr_inv_items = sItems;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = info_x;
slots_y = inv_UI_y (154* scale);

//------PlayerInfo
ds_player_info = ds_grid_create(2,4);
ds_player_info[# 0, 0] = "Name";
ds_player_info[# 1, 0] = "Henry";

//---------invetory
ds_inventory = ds_grid_create(2, inv_slots);

//--------items
enum item 
{
	none		= 0,
	tomato		= 1,
	potato		= 2,
	teaset		= 3,
	lantern		= 4,
	flag		= 5,
	gourd		= 6,
	delftsblue	= 7,
	bicycle		= 8,
	boots		= 9,
	ball		= 10,
	chair		= 11,
	picture		= 12,
	axe			= 13,
	sdcard		= 14,
	starfish	= 15,
	MapFragment	= 16,
}

//var yy = 0; repeat(inv_slots)
//{
//	ds_inventory[# 0, yy] = irandom_range(1, item.height-1);
//	ds_inventory[# 1, yy] = irandom_range(1, 10);
//	yy += 1;
//}