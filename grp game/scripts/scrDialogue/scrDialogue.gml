///Begin dialogue between the player and a NPC


function scrDialogue(){
	
	//create dialogue box instance
	//TODO: Adjust dialogue box spawn positions and size
	//dialogueBox = instance_create_depth(view_wport[view_current] / 2, view_hport[view_current] / 2, -1, oDialogueBox);
	dialogueBox = instance_create_depth(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), -1, oDialogueBox);

	with(dialogueBox) 
	{
		maxWidth = sprite_width - 0; //TODO: subtract margin necesary for final text box sprite	
		maxHeight = sprite_height - 0; //TODO: subtract margin necesary for final text box sprite	
		Text = Source.NPCDialogue[0, 0];
	}

}