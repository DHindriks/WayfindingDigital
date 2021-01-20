/// @description move through dialogue
if (position >= string_length(Text[messageIndex]) && !Expiring) 
{
	Expiring = true;
	alarm[1] = room_speed * 3;
}
	
	
if (messageIndex < array_length_1d(Text)) 
{
	if (string_length(currentText) < string_length(Text[messageIndex])) 
	{
			currentText = string_copy(Text[messageIndex], 1, position);
			position++;
	}
}