	if (!ToolTipdisplayed && !other.InDialogue) 
	{
		NPCDialogue[0, 0] = "Looks like all items have been collected, let's bring them back.";
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	}