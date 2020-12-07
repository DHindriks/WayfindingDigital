///Begin dialogue between the player and a NPC


function scrDialogue(){
	
	//create dialogue box instance
	dialogueBox = instance_create_depth(view_wport[view_current] / 2,  (view_hport[view_current] / 4) * 3, -1, oDialogueBox);

	with(dialogueBox) 
	{
		//sets text, margins, etc,
		maxWidth = sprite_width - 8; //TODO: subtract margin necesary for final text box sprite	
		maxHeight = sprite_height - 24; //TODO: subtract margin necesary for final text box sprite
		Text = Source.NPCDialogue[Index1, Index2];
		messageIndex = 0;
		
		//if string is too long, devide into multiple parts.
		if (string_height_ext(Text, 16, maxWidth) > maxHeight) 
		{
			Texheight = string_height_ext(Source.NPCDialogue[Index1, Index2], 16, maxWidth);
			amount = (Texheight / (maxHeight));;
			startAt = 0;
			for (i = 0; i < amount; i++) {
				Text[i] = string_copy(Source.NPCDialogue[Index1, Index2], startAt, (string_length(Source.NPCDialogue[Index1, Index2])) / amount);
				startAt = string_length(Text[i]) * (i + 1);
			}
					
		}else //if string is not too long, display in 1 sentence 
		{
			Text[messageIndex] = Source.NPCDialogue[Index1, Index2];
		}
		
	}

}