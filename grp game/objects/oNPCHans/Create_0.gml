/// npc behaviour code

hsp = 0;
vsp = 0;
grv = 0.3;
LevelCompleted = false;

alarm[0] = room_speed / 10;
Itemsloaded = false;

//npc dialogue
NPCDialogue[0, 0] = "Hallo Henry! O oh, do you mind taking off your shoes first?";
NPCDialogue[0, 1] = "May I ask why that is?" + "01";

NPCDialogue[1, 0] = "Oh yeah sorry. Well you see, I'm from Deutschland, my name is Hans. Ask my parents why they chose to give me such a stereotypical name. Anyway! In Germany we are used to taking off our shoes when entering a house, or a carpeted room in general. Speaking of shoes. I had put mine beside the doorway but they're gone. Hey, do you think you could maybe help me look for them? It will be hard for me go home without my Schuhe.";
NPCDialogue[1, 1] = "Yeah no problem. Thank you for explaining." + "02";

NPCDialogue[2, 0] = "In the meantime I'll try passing some time by practicing tricks with my soccer. ball. Scheische! How did a soccer ball get lost? H hey, do you think";
NPCDialogue[2, 1] = "Don't you worry about it, I'm on it." + "99";

