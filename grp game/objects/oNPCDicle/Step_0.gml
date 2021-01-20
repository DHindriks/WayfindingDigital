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

//Check if NPC is near Player for dialogue system
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


		InventoryContains(IdList, true);		

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
	}
}
	if (Index1 == 9 && CurrentChoice == 0 && !oLevelManager.CafeCompleted && LevelCompleted) 
	{
		show_debug_message("dropping map");
		oLevelManager.CafeCompleted = true;
		oLevelManager.HallwayUnlocked = true;
		mapfrag = instance_create_depth(lerp(x, PlayerCharacter.x, 0.5), lerp(y, PlayerCharacter.y, 0.5), -5, o_Item)
		with (mapfrag) 
		{
			item_num = 16;
			x_frame = 0;
			y_frame = 1;
			drop_move = false;
			alarm[1] = room_speed * 4;
		}
	}

y = y + vsp;
