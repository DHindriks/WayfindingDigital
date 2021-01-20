/// npc behaviour code

hsp = 0;
vsp = 0;
grv = 0.3;

LevelCompleted = false;

alarm[0] = room_speed / 10;
Itemsloaded = false;
//dialogue
NPCDialogue[0, 0] = "Greetings. My name is GUAN ZHENGPENG. I'm from the mainland of China.  I have a thing that I could use your help with.";
NPCDialogue[0, 1] = "Nice to meet you, I'm Henry, What can I help you with?" + "01";

NPCDialogue[1, 0] = "My father passed away a few years ago. He left me a box. The box is code locked and I've tried every possible solution I can come up with to open it but failed.";
NPCDialogue[1, 1] = "I'm sorry to hear that, sounds like a really complicated puzzle." + "02";

NPCDialogue[2, 0] = "Given the fact that my father is a master at encrypting files and my results, I'm suspecting it is not a simple code, but rather something else, like light, smell, or maybe even a memory.";
NPCDialogue[2, 1] = "How can I help you open it?" + "03";

NPCDialogue[3, 0] = "My father was a veteran served in the Chinese military. It is highly possible that the elements I need might have something to do with China. Find any item related to China and bring them to me. I appreciate your help.";
NPCDialogue[3, 1] = "I'll see what I can do." + "04";
NPCDialogue[3, 2] = " One question: What does being a veteran has to do with Chinese elements?" + "05"

NPCDialogue[4, 0] = "Good luck";

NPCDialogue[5, 0] = "Well, typically, Chinese people tend to become very defensive when it comes to our own country. And we value our culture and history so much that there's even a meme for it: for Chinese people, there are only two cultures in the world Chinese culture and foreign culture. A veteran served in Chinese army will have this tendency even more. It is possible a Chinese veteran may value our country so much that he would just consider the country as a priority no matter what. My father, as an example, was one of them. So I suspect he used Chinese elements to encrypt this.";






