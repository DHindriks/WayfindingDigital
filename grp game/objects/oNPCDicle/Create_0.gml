/// npc behaviour code

hsp = 0;
vsp = 0;
grv = 0.3;

alarm[0] = room_speed / 10;
LevelCompleted = false;
Itemsloaded = false;


//npc dialogue
NPCDialogue[0, 0] = "Selam";
NPCDialogue[0, 1] = "hello! I am your new teacher. What are you up to?" + "01";

NPCDialogue[1, 0] = "Well, I have been wanting to drink some cay, but I can't find my tea pot nor my tea glass anywhere!";
NPCDialogue[1, 1] = "What is cay?" + "02";
NPCDialogue[1, 2] = "Can I help with anything?" + "03";

NPCDialogue[2, 0] = "Oh, sorry! It means tea' in Turkish. By the way, if it's not much to ask, would it be too much to ask you to help?";
NPCDialogue[2, 1] = "It would be a great way to get to know my way around, so absolutely. Will that be all?" + "03";

NPCDialogue[3, 0] = "If that's okay with you, that would be great. I am also looking for some lokum";
NPCDialogue[3, 1] = "I got it." + "04";
NPCDialogue[3, 2] = "What is lokum?" + "05";


NPCDialogue[4, 0] = "Harika! O-oh, that means great in Turkish haha. I'll see you in a bit.";

NPCDialogue[5, 0] = "Oops! Sorry. That is a Turkish delight which comes in many forms. The main form being a small jelly cube.";
NPCDialogue[5, 1] = "I see, I'll look for that too then." + "99";

NPCDialogue[6, 0] = "Now that you ask. Lokum would go great with that."
NPCDialogue[6, 1] = "I got it." + "04";
NPCDialogue[6, 2] = "What is lokum?" + "05";