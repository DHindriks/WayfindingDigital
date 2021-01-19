vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
     while (!place_meeting(x+sign(hsp),y,oWall))
	 {
		 x = x + sign(hsp);
	 }
     hsp = -hsp;
}

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
     while (!place_meeting(x,y+sign(vsp),oWall))
	 {
		 y = y + sign(vsp);
	 }
     vsp = 0;
}
ItemsPicked = true;
if(collision_circle(x, y, 64, oPlayer, true, true) && oPlayer.hascontrol && Itemsloaded) 
{
	for(i = 0; i < array_length_1d(RoomItems); i++)
	{
		if (instance_exists(RoomItems[i]))
		{
			ItemsPicked = false;
		}
		
	}
	if (ItemsPicked && !LevelCompleted)
	{

		//for (i = 0; i < array_length_1d(IdList); i++)
		//{
			InventoryContains(IdList, true);		
			show_debug_message(string(IdList));
		//}
		event_user(0);
		LevelCompleted = true;
		ItemsPicked = false;
	}
	
	if (keyboard_check_pressed(ord("E"))) 
	{
		Source = self;
		PlayerCharacter = collision_circle(x, y, 64, oPlayer, true, true);
		PlayerCharacter.hascontrol = false;
		Index1 = 0;
		Index2 = 0;
		scrDialogue();
		show_debug_message("Initiating dialogue");
	}
}

y = y + vsp;