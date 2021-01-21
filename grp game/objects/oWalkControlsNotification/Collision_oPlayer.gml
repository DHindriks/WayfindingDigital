	if (!ToolTipdisplayed && !other.InDialogue && !oLevelManager.CafeCompleted) 
	{
		NPCDialogue[0, 0] = "Use the WASD or arrow keys to move around. Press SPACE to jump.";
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	}