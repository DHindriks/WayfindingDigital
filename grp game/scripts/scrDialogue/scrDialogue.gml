///Begin dialogue between the player and a NPC


function scrDialogue(){
	
	dialogueBox = instance_create_depth(view_wport[view_current] / 2, view_hport[view_current] / 2, -1, oDialogueBox);

	with(dialogueBox) 
	{
		maxLength = sprite_width - 0; //TODO: subtract margin necesary for final text box sprite	
		maxHeight = sprite_height - 0; //TODO: subtract margin necesary for final text box sprite	
		Text = Source.NPCDialogue[0, 0];
	}

}