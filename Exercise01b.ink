/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> keep_entrance

== keep_entrance ==
You feel the bracing wind and dusty flurries gnaw at you as you make your way up the main thoroughfare of Krissenthal, towards Count Vedillan's keep. As you ascend the staircase to the veritable fortress, you hear the supports creak against the winds, barely holding up the cobbled battlements of stone and spruce. Vestiges of this city's role and plight amidst the Amalgamere War. Once you finally reach the gates, a guard speaks up. 
"State your business."
* ["The Count called for me. I know not what for."] -> meek_entrance
* ["Best skip the formalities. You should know Vedillan's expecting me."] -> aggro_entrance
-> END

== meek_entrance ==
The guards take a look at one another. "Very well," the other says. "But you'll need an escort."
The gates rumble open as another guard is called to oversee you enter Count Vedillan's main hall. You are escorted into a dimly lit mead hall with empty, dusty settings lining the long wooden table. A massive curtain obscures a great window looking out over the city's palisade and into the surrounding forest. The guard moves to one of many doors on one side of the room and knocks, announcing your arrival. Shortly after, Count Vedillan, who seems smaller in stature than you might expect of a war hero, emerges. 
-> exposition
-> END

== aggro_entrance ==
"Alright, alright," they say. "No need to get testy, you can never be too careful. Count'll deal with you if you're lying."
The gates rumble open as the other guard give you directions to the main hall of the keep, where the Count can be found. You soon wander into a dimly lit mead hall with empty, dusty settings lining the long wooden table. A massive curtain obscures a great window looking out over the city's palisade and into the surrounding forest. Vedillan isn't here to greet you, and being left unattended, you see a simple, yet sturdy looking knife stuck into the table.
* Pocket it. No one's using it anyways. -> knife
* Leave it. You don't want to get in trouble for this sort of thing. -> exposition
-> END

== knife ==
You wrest the knife from it's mahogany hold, and stash it away mere moments before a door opens, and Count Vedillan, who looks smaller in stature than you'd expect from a war hero, enters. 
-> exposition
-> END

== exposition ==
{knife:"I thought I'd heard something.}{not knife && aggro_entrance: You keep your hands to yourself and wait patiently. A few minutes later, a door opens, and Count Vedillan, who looks smaller in stature than you'd expect from a war hero, enters. "}You're earlier than expected. I appreciate the expediency, and I apologize for the secrecy. I'll cut to the chase. I need you to run an errand for me out into the Krissenfrost Wood, to the ruined city of Cenngwith. An old family heirloom has been left there, and I'm no longer in any shape to make the expedition."
*["I accept this charge. But I'm afraid this work doesn't come free."] -> request
*["I'll need some incentive to do your dirty work old man."] -> demand
-> END

== request ==
{knife: "I should think that knife will serve you well. Consider that, as well as my allowance of your sticky fingers, an advance on your payment." -> outside|"Of course, I wouldn't expect otherwise. I know you've ventured out there before, but this upfront reward should ease your way." Vedillan approaches three stands with different items on each.}
+ {not knife} ["The Aethermaul. A hammer made of aetherium, a substance known for chanelling movement and force."] -> aethermaul
+ {not knife} ["Chaosbinder. A bow siffused with unstable arcana, that may lash out at you, but it's pandemonium will wreak greater havok on your foes."] -> chaosbinder
+ {not knife} ["And the Helm of Jareth, which silvers your tongue, and perfects your pitch. The beasts beyond the palisade are cunning, but this might help match their wit."] -> helm
-> END

== demand ==
Count Vedillan's nostrils flare, as his deep, sombre eyes darken further still. 
{knife: "Thrice you have disrespected me. You disrespect the servants of my house, that which belongs to me, and now, you all but spit in my eye. I'm afraid I cannot, will not stand for this." -> prison_ending }
"I did have some items to help guide your path. I will ignore this disrespect and still provide one as upfront compensation, but the ice you stand on wears thin."
Vedillan approaches three stands with different items on each. He ignores one on the end.
"I'm afraid you are unfit for this artifact."
+ ["The Aethermaul. A hammer made of aetherium, a substance known for chanelling movement and force."] -> aethermaul
+ ["Chaosbinder. A bow siffused with unstable arcana, that may lash out at you, but it's pandemonium will wreak greater havok on your foes."] -> chaosbinder
-> END

== aethermaul ==
You pick up the Aethermaul. You're barely able to lift the dark metallic arm at first, but as you manuveur it, you feel an almost magnetic attraction guiding your hand. -> outside
-> END

== chaosbinder ==
You pick up Chaosbinder. You feel the static energy emanating from the multiple cracked arms, with ephermal, multicolor glows pulsating within it. Despite the wear and unevenness, there is elegance in it's flaws. -> outside
-> END

== helm ==
You don the Helm of Jareth. The maplewood crown nestles nicely over your brow, and within the silver framing of the helmet, you hear a symphony around you. Every creak of wood, every shift of a foot, every whistle of wind, comes together to compose a beautiful song. -> outside
-> END

== outside ==
{not wood_entrance: You {knife: sheepishly } thank the Count, but before you leave, he leaves you one final guidance.}
{not wood_entrance: "My mother's journal, from when she still served as Baroness of Cenngwith. This will help you find your way there, and to identify the object I desire."}
{wood_entrance: The cries still ring out from the alley.|With that you leave the keep, to brave not just the oppressive winter winds, but the threats that lie in the Krissenfrost Wood. While making your way to the palisade surround the city, to descend the hill it stands atop, you hear grunts of pain down a nearby alleyway.}
+ Investigate. Someone could be hurt. -> alley
+ Keep walking. You've got bigger things on your plate. -> wood_entrance
-> END

== alley ==
{knife: Knife } {aethermaul: Hammer } {chaosbinder: Bow } {helm: Helm } at the ready, you slowly creep towards the source of distress. The utterances cease, and you whip your head around to observe your surroundings. Out of the corner of your eye, under the thin dusting of snow, you catch a patch of discoloration. Where the cold hard dirt should be, there is instead a crimson coating of blood. 
TO BE CONTINUED...
-> END

== wood_entrance ==
   You keep on forward, eventually reaching the treeline at the foot of the hill, armed, and ready for what happens next.
   + Your conscious gets the better of you. Go back to the alley. -> outside 
-> END

== prison_ending ==
Several guards are revealed in and around the great mead hall, and your arms are seized. Despite your struggles, protests, and apologies, you are dragged away without another word, and thrown into the dungeon of Count Vedillan's keep, where you will remain for an indefinite sentence.
-> END