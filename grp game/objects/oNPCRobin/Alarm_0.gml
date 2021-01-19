/// @description Look for items

for (i = 0; i < instance_number(o_Item); i++) 
{
	ItemFound = instance_find(o_Item, i);
	RoomItems[i] = ItemFound;
	IdList[i] =  RoomItems[i].item_num;
}

		for (i = 0; i < array_length_1d(IdList); i++)
		{
			show_debug_message(string(IdList[i]));
		}
		Itemsloaded = true;