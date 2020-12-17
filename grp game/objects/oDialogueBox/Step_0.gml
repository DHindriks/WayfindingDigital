/// @description move through dialogue
if (keyboard_check_pressed(vk_space) && position >= string_length(Text[messageIndex])) 
{
	messageIndex++;
	position = 0;
	currentText = "";
	if (messageIndex >= array_length_1d(Text) && !hasChoices) 
	{
		with (oDialogueBox)
		{
			instance_destroy();
		}
		oPlayer.alarm[0] = 10;

	}
	else if (messageIndex >= array_length_1d(Text) && hasChoices) 
	{
			with (oDialogueBox)
		{
			instance_destroy();
		}
		ScrShowChoices();
	}
}else if (keyboard_check_pressed(vk_space) && position < string_length(Text[messageIndex])) 
{
	alarm[0] = 5;	
}
	
	
if (messageIndex < array_length_1d(Text)) 
{
	if (string_length(currentText) < string_length(Text[messageIndex])) 
	{
			currentText = string_copy(Text[messageIndex], 1, position);
			position++;
	}
}