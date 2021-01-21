	if (!ToolTipdisplayed && !other.InDialogue && !oLevelManager.CafeCompleted) 
	{
		NPCDialogue[0, 0] = "Press F near an item to pick it up.";
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	}