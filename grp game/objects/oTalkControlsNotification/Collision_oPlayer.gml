	if (!ToolTipdisplayed && !other.InDialogue) 
	{
		NPCDialogue[0, 0] = "Press E near someone to talk";
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	}