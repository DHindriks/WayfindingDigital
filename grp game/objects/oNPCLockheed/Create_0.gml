/// npc behaviour code

NPCDialogue[0, 0] = "Awrite  big man, how's it gaun? Ma name's Elijah Lockheed n' am' a student here!";
NPCDialogue[0, 1] = "Um, hello my name is Henry and I am doing rather well. What is this place if you don't mind me asking?" + "01";

NPCDialogue[1, 0] = "Aw, here? Well this is the Makerspace of course, ma favourite place in the Hanze, other than the canteen where am usually gobbling doon a bit ae grub, ye ken?";
NPCDialogue[1, 1] = "I see, but what is this gobbling doon a bit ae grub that sounds horrible?" + "02";

NPCDialogue[2, 0] = "A just mean am' eatin' a wee bit ae food, ye know?";
NPCDialogue[2, 1] = "Ah I see, my apologies.So what are you up to in here?" + "03";

NPCDialogue[3, 0] = "Am actually looking fur ma SD card fur the 3D printer but A cannae fun it anywhere! Av got a deadline the day n A need tae print suhin oot! Am also looking for ma silver brooch that a wear to complete ma kilt that am wearin.";
NPCDialogue[3, 1] = "I can help you look for them. I have some free time today." + "04";
NPCDialogue[3, 2] = "Good luck with finding it I'm sure it will show up somewhere!" + "05";
//i can help
NPCDialogue[4, 0] = "Awh! Thanks so much, A really appreciate yer help, Sir!";
//good luck
NPCDialogue[5, 0] = "Aye, Am' sure it will keep yer eyes peeled fur me will ye?!";

alarm[0] = room_speed / 10;
Itemsloaded = false;
LevelCompleted = false;

hsp = 0;
vsp = 0;
grv = 0.3;