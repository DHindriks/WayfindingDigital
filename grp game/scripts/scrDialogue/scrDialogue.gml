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
		LastSpace = 0;
		
		if (array_length_2d(Source.NPCDialogue, Index1) > 1) 
		{
			hasChoices = true;
		}else 
		{
			hasChoices = false;	
		}
			
		
		//if string is too long, devide into multiple parts.
		if (string_height_ext(Text, 16, maxWidth) > maxHeight) 
		{
			//TODO: when dividing the string, divide at the spaces, dont cut words
			//foreach character in string (string_Length)
			//
			Texheight = string_height_ext(Source.NPCDialogue[Index1, Index2], 16, maxWidth);
			amount = (Texheight / (maxHeight));;
			startAt = 0;
			for (i = 0; i < amount; i++) {
				if (string_char_at(Source.NPCDialogue[Index1, Index2], i) == " ") 
				{
					LastSpace = i;
				}
				Text[i] = string_copy(Source.NPCDialogue[Index1, Index2], startAt, (string_length(Source.NPCDialogue[Index1, Index2])) / amount);
				startAt = string_length(Text[i]) * (i + 1);
			}
					
		}else //if string is not too long, display in 1 sentence 
		{
			Text[messageIndex] = Source.NPCDialogue[Index1, Index2];
		}
		
	}

}

function ScrShowChoices() 
{
	for (i = 1; i < array_length_2d(Source.NPCDialogue, Index1); i++)
	{
		Index2++
		choiceBox[i - 1] = instance_create_depth((view_wport[view_current] / 4) * i,  (view_hport[view_current] / 4) * 3, -1, oDialogueChoiceBox);
		with (choiceBox[i - 1]) 
		{
			maxLength = sprite_width - 8;
			maxHeight = sprite_height - 24;
			Text = Source.NPCDialogue[Index1, Index2];
			myNumber = string_copy(Text, string_length(Text) - 1, 2);
			myNumber = real(myNumber);
			Text = string_copy(Text, 1, string_length(Text) - 2);
			image_speed = 0;
		}
	}
	showingChoices = true;
	oDialogueSystem.alarm[0] = 10;
}