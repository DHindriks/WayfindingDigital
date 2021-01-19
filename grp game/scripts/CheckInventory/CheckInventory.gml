// Script assets have changed for v2.3.0 see

//checks
function InventoryContains(ID, RemoveItem){
	var Inventory = oInventory;


	//cycles through inventory
	for(i = 0; i < ds_grid_height(Inventory.ds_inventory); i++) 
	{
		SItem = Inventory.ds_inventory[# 0, i];
		for (j = 0; j < array_length_1d(ID); j++)
		{		
		
		//if item ID is the same as what we're looking for
		if(SItem == ID[j]) 
		{
					show_debug_message("Removing item with ID: " + string(ID[j]));

			//if item remove argument(bool) is true
			if(RemoveItem == true) 
			{
				//if player has only one of these items remove whole item from inv, else remove only one
				 if(Inventory.ds_inventory[# 1, i] <= 1) 
				 {
					 Inventory.ds_inventory[# 0, i] = 0;
					 Inventory.ds_inventory[# 1, i] = 0;
				 }else 
				 {
					 Inventory.ds_inventory[# 1, i]--;
				 }
			}
		}
	}
	}
	return false;
}