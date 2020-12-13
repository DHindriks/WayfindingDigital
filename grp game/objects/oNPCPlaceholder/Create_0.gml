/// npc behaviour code

hsp = 0;
vsp = 0;
grv = 0.3;

//npc dialogue
NPCDialogue[0, 0] = "Hello player! I am a NPC placeholder used to test the dialogue system. This line is pretty long and should eventually stop to be displayed after the player presses the next(spacebar) button.";

////player options
NPCDialogue[0, 1] = "Say something cool" + "01";
NPCDialogue[0, 2] = "How are you?" + "02";
NPCDialogue[0, 3] = "Goodbye" + "99";

NPCDialogue[1, 0] = "Nah, I'm just a boring NPC.";
//how are you?
NPCDialogue[2, 0] = "I'm doing well, standing here and testing dialogue is easy, it just doesn't pay that well... How about you?";
NPCDialogue[2, 1] = "I'm doing great." + "03";
NPCDialogue[2, 2] = "I'm not doing very well..." + "04";
NPCDialogue[2, 3] = "Who is paying you to be an NPC?" + "05";
NPCDialogue[2, 4] = "Seems like a very boring job." + "06";

//im doing great
NPCDialogue[3, 0] = "That's good to hear.";
//not doing well
NPCDialogue[4, 0] = "Sorry to hear that.";
//who's paying you
NPCDialogue[5, 0] = "That information is classified I'm afraid.";
//seems boring
NPCDialogue[6, 0] = "I think it's pretty chill.";
