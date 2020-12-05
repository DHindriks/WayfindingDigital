///Begin dialogue between the player and a NPC


function scrDialogue(){
	
	//create dialogue box instance
	//TODO: Adjust dialogue box spawn positions and size
	//dialogueBox = instance_create_depth(view_wport[view_current] / 2, view_hport[view_current] / 2, -1, oDialogueBox);
	dialogueBox = instance_create_depth(view_wport[view_current] / 2,  (view_hport[view_current] / 4) * 3, -1, oDialogueBox);

	with(dialogueBox) 
	{
		maxWidth = sprite_width - 48; //TODO: subtract margin necesary for final text box sprite	
		maxHeight = sprite_height - 48; //TODO: subtract margin necesary for final text box sprite	
		Text = Source.NPCDialogue[Index1, Index2];
		messageIndex = 0;
		
		if (string_height_ext(Text, 16, maxWidth > maxHeight)) 
		{
			textHeight = string_height_ext(Source.DialogueList[Index1, Index2], 16, maxWidth)
			amount = (textHeight / (sprite_height - 48));
			startAt = 0;
			for (i = 0; 1 < amount; i++) {
				Text[i] = string_copy(Source.NPCDialogue[Index1, Index2], startAt, (string_length(Source.NPCDialogue[Index1, Index2])) / amount);
				startAt = string_length(Source.NPCDialogue[Index1, Index2]) / amount;
			}
					
		}else 
		{
			Text[messageIndex] = Source.NPCDialogue[Index1, Index2];
		}
		
	}

}