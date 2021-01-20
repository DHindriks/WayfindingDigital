/// @description Look for items

for (i = 0; i < instance_number(o_Item); i++) 
{
	ItemFound = instance_find(o_Item, i);
	RoomItems[i] = ItemFound;
	IdList[i] =  RoomItems[i].item_num;
	if (oLevelManager.CafeCompleted) 
	{
		ItemFound.alarm[0] = room_speed / 5;
	}
}
		Itemsloaded = true;