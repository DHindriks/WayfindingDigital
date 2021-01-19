/// @description Look for items

for (i = 0; i < instance_number(o_Item); i++) 
{
	ItemFound = instance_find(o_Item, i);
	RoomItems[i] = ItemFound;
	IdList[i] = ItemFound.item_num;
}
	
	show_debug_message("Dicle is looking for " + string(array_length_1d(RoomItems)) + " items")