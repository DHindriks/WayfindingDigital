/// @description Choosing options
if (showingChoices) 
{
	for (i = 0; i < array_length_1d(choiceBox); i++)
	{
		choiceBox[i].image_index = 0;	
	}
	
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
	{
		CurrentChoice++;
		CurrentChoice = clamp(CurrentChoice, 0, array_length_1d(choiceBox) - 1)	
	}
	
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
	{
		CurrentChoice--;
		CurrentChoice = clamp(CurrentChoice, 0, array_length_1d(choiceBox) - 1)	
	}
	choiceBox[CurrentChoice].image_index = 1;
	
	//picking selected choice
	if (keyboard_check_pressed(vk_space) && alarm[0] < 0)
	{
			Index1 = choiceBox[CurrentChoice].myNumber;
			Index2 = 0;
			showingChoices = false;
			CurrentChoice = 0;
			for (i = 0; i < array_length_1d(choiceBox); i++)
			{
				with(choiceBox[i]) 
				{
					instance_destroy();
				}	
			}
			choiceBox = 0;
			if (Index1 != 99) 
			{
				scrDialogue();
			}else
			{
				oPlayer.alarm[0] = 10;
			}
				
	}
}