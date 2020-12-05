/// move through dialogue
if (keyboard_check_pressed(vk_space)) 
{
	messageIndex++;
	if (messageIndex >= array_length_1d(Text))
	with (oDialogueBox)
	{
		instance_destroy();
		oPlayer.alarm[0] = 10;
	}
}
	
	