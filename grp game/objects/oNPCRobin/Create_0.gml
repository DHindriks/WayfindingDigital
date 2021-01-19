/// npc behaviour code

hsp = 0;
vsp = 0;
grv = 0.3;

alarm[0] = room_speed / 10;
Itemsloaded = false;
LevelCompleted = false;

//dialogue
NPCDialogue[0, 0] = "Robin: Hallo Henry, how has Hanze been for you so far? Getting around fine?";
NPCDialogue[0, 1] = "Hello, everything has been going great. What's your name?" + "01";

NPCDialogue[1, 0] = "Oh ja, sorry. My name is Robin and I'm a Dutch student. I've been wanting to study here at the Hanze for a very long time.";
NPCDialogue[1, 1] = "Why is that?" + "02";

NPCDialogue[2, 0] = "Because of the opportunities this school gives you. It already lets you work with clients in your first year. How cool is that!? If you do the Game Design course, of course. I don't know about the other courses.";
NPCDialogue[2, 1] = "That is pretty cool like you said. Hey, do you think you can tell me some more things about the culture around here? I have a question I've always wondered…" + "03";

NPCDialogue[3, 0] = "Ga je gang(go ahead)";
NPCDialogue[3, 1] = "Why are some Dutch souvenirs blue on white? Like those porcelain plates andwhatnot. Where do they come from?" + "04";

NPCDialogue[4, 0] = "Well you see, back in the day traders went and brought back Chinese porcelain, these were made by using special ink on porcelain and then baking it, which turned the ink blue. The Dutch wanted to recreate these items, and made their own which we now call Delfts Blauw. I actually have a Delfts Blauw bowl somewhere, but I seem to have lost it. Could you help me find it?";
NPCDialogue[4, 1] = "Yes of course, I'd like to have a look at it myself as well." + "05";

NPCDialogue[5, 0] = "Besides the Delfts Blauw, I assume you have noticed the Dutch use the bicycle a lot.";
NPCDialogue[5, 1] = "I did, what is up with that?" + "06";

NPCDialogue[6, 0] = "We feel like it's much easier to take the bike to go places, since it's fast, affordable and healthy. Not to mention safe, since we have dedicated roads for riding the bikes. You'll notice with traffic, it turns out to be faster if you were to be with the bicycle. Hey, I can lend you mine if you'd like to try it out. You just gotta bring it to me first so I can check it.";
NPCDialogue[6, 1] = "Will do!" + "99";
