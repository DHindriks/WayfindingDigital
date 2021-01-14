	show_debug_message("COLL WITH ITEM");
	if (!ToolTipdisplayed && !other.InDialogue && ToolTip != "") 
	{
		NPCDialogue[0, 0] = ToolTip;
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
		ToolTipdisplayed = true;
		
	} else if (!other.InDialogue && keyboard_check_pressed(ord("E")) && ToolTip != "") 
	{
		NPCDialogue[0, 0] = ToolTip;
		Source = self;
		PlayerCharacter = other;
		Index1 = 0;
		Index2 = 0;
		scrShowToolTip();
	}