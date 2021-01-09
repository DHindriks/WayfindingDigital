if (!DoorLocked) 
{
	with (oPlayer)
	{
		if (hascontrol)
		{
				hascontrol = false;
				SlideTransition(TRANS_MODE.GOTO,other.target);
		}
	}
}else if (DoorLocked && oLevelManager.HallwayUnlocked)  
{
	DoorLocked = false;
}