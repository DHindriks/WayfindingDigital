if (!DoorLocked) 
{
	with (oPlayer)
	{
		if (hascontrol)
		{
				hascontrol = false;
				SlideTransition(TRANS_MODE.GOTO,other.target);
		}
	}
}else if (DoorLocked)  
{
	if (oLevelManager.CafeUnlocked) 
	{
			DoorLocked = false;
	}
	if (!ToolTipdisplayed && !other.InDialogue) 
	{
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	} else if (!other.InDialogue && keyboard_check_pressed(ord("E"))) 
	{
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
	}
	
}