	if (!ToolTipdisplayed && !other.InDialogue && !oLevelManager.HallwayCompleted) 
	{
		NPCDialogue[0, 0] = "Press I to open and close your inventory.";
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	}