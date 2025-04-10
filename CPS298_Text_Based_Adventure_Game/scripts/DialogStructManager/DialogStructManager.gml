function DialogStructManager(){
	return {
		scenes:
		[

			{
				sceneIndex: 0,
				sceneName: "0 passage to illustrate",
				background: house_past,
				sceneText: "This is passage text\n{this is something that happens because you're in this passage}\n[[This is a choice.  It goes to a passage with this title.]]\nThis is a choice that goes to a passage with a different title\n[[OtherChoice]]",
				options: [
					["This is a choice.  It goes to a passage with this title.", goToSceneIndex, [13]],
					["OtherChoice", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 1,
				sceneName: "Immediately get to work",
				background: spr_background,
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 2,
				sceneName: "Investigate the shiny object you notice out of the corner of your eye?",
				background: spr_background,
				sceneText: "You pause for a moment, happy for an excuse to put off the day's work.  You reach down for the scuffed metal object, notice it's a large brass key.  The antique object is worn to brushed shininess in two places.  The part where...  Is it suddenly really warm?  The part where it would be held, and the whatever, the blade of the key is old timey and why is it hard to see and think of word for th wher\n[[Pass out]]",
				options: [
					["Pass out", goToSceneIndex, [12]],
					]
				},
			{
				sceneIndex: 3,
				sceneName: "Take a cold shower",
				background: spr_background,
				sceneText: "The ice in your veins meets the steely sting of the water.  You feel the adrenaline course its way into your limbs.  Your mind begins to wake up, shocked into resourcefulness by your masachistic routine.\n{gain 1 alertness point}\n[[Finish getting ready and eat some breakfast]]",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [19]],
					]
				},
			{
				sceneIndex: 4,
				sceneName: "shake it off -- spend 1 resilience point",
				background: spr_background,
				sceneText: "You shudder, focus all your mental energy, and just decide to move on.\n[[Finish getting ready and eat some breakfast]]",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [19]],
					]
				},
			{
				sceneIndex: 5,
				sceneName: "proceed to 'have a day'  -- lose one alertness point, gain status 'Having a day.'",
				background: spr_background,
				sceneText: "Alright.  Morning: tough.  Side of the bed: Wrong.  Day:  Having a.\n[[Finish getting ready and eat some breakfast]]",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [19]],
					]
				},
			{
				sceneIndex: 6,
				sceneName: "Press R",
				background: spr_background,
				sceneText: "You press R on the elevator to get some air.  After a brief existential whirr, the doors open on the roof of the building.  You step out, gulp a few mouthfuls of air and steel your nerves for the day.  As you're about to turn back to the elevators, you notice something.\nDo you\n[[Investigate the shiny object you notice out of the corner of your eye?]]\nor do you\n[[Focus on getting to the days work.]]",
				options: [
					["Investigate the shiny object you notice out of the corner of your eye?", goToSceneIndex, [2]],
					["Focus on getting to the days work.", goToSceneIndex, [7]],
					]
				},
			{
				sceneIndex: 7,
				sceneName: "Focus on getting to the days work.",
				background: spr_background,
				sceneText: "[[Press 13]]",
				options: [
					["Press 13", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 8,
				sceneName: "Margaret Ashford",
				background: spr_background,
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 9,
				sceneName: "Grab a banana",
				background: spr_background,
				sceneText: "{gain a banana} This will bring a longing no food could fill closer to comfort.  You make a mental note to wrap the banana's peel in newspaper before throwing it out.  Your keen nose will be distracted all day if you don't.\nTake your banana back to the elevator and \n[[Press R]]\n[[Press 13]]",
				options: [
					["Press R", goToSceneIndex, [6]],
					["Press 13", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 10,
				sceneName: "Take advantage of the extra... ugh... hour",
				background: spr_background,
				sceneText: "You groan, perhaps a bit dramatically, for no one's benefit.  You tumble your legs out of the bed, hoping peer pressure will rouse the rest of you.  Standing unsteadily, you blear your way to the bathroom, relieve yourself, and attempt to jump start your day.\n[[Take a hot shower]]\n[[Take a cold shower-battle]]",
				options: [
					["Take a hot shower", goToSceneIndex, [15]],
					["Take a cold shower-battle", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 11,
				sceneName: "Grab a gooey cinnamon bun",
				background: spr_background,
				sceneText: "{gain cinnamon bun}  This treat will hserve as external courage to face the day's work tasks.  You silently thank yourself for the private washroom in your new offices as you notice the small package smearing sugary deliciousness on your pinkie.  Stepping back into the empty elevator, you \n[[Press R]]\n[[Press 13]]",
				options: [
					["Press R", goToSceneIndex, [6]],
					["Press 13", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 12,
				sceneName: "Pass out",
				background: spr_background,
				sceneText: "Your thoughts swirl half formed.  Maybe you hear shouting.  Maybe it's your mind trying to make sense of the rushing sound in your ears on the edge of intelligibility.  You think of faces half seen during your day.  The roar gets louder and you find yourself face to face with\n[[William Redbrook]]\n[[Nicholas Drayton]]\n[[Margaret Ashford]]",
				options: [
					["William Redbrook", goToSceneIndex, [17]],
					["Nicholas Drayton", goToSceneIndex, [18]],
					["Margaret Ashford", goToSceneIndex, [8]],
					]
				},
			{
				sceneIndex: 13,
				sceneName: "This is a choice.  It goes to a passage with this title.",
				background: spr_background,
				sceneText: "[[Opening scene]]",
				options: [
					["Opening scene", goToSceneIndex, [14]],
					]
				},
			{
				sceneIndex: 14,
				sceneName: "Opening scene",
				background: theater_past,
				sceneText: "It's too early.  It's dark and it's quiet and it's warm but it's too early.  Your muffled thoughts slowly resolve themselves into enough clarity to question how long you have left... before your alarm.\nToo long.\nIt's too early.\n[[Go back to bed]]\n[[Take advantage of the extra... ugh... hour]]",
				options: [
					["Go back to bed", goToSceneIndex, [26]],
					["Take advantage of the extra... ugh... hour", goToSceneIndex, [10]],
					]
				},
			{
				sceneIndex: 15,
				sceneName: "Take a hot shower",
				background: spr_background,
				sceneText: "You relax under the calming water, letting your anger at the world for existing melt like ice and flake off of you in layers.  Your jaw ucleanches.  You're not happy with today, but you're a little more ready for it.\n{gain a resilience point}\nYou towel off and sit on the bed, relaxing for just a moment... stretching out feels... so nice...\n[[Your alarm wakes you]]",
				options: [
					["Your alarm wakes you", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 16,
				sceneName: "Fidget for a moment, putting off the tasks of the day",
				background: spr_background,
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 17,
				sceneName: "William Redbrook",
				background: spr_background,
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 18,
				sceneName: "Nicholas Drayton",
				background: spr_background,
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 19,
				sceneName: "Finish getting ready and eat some breakfast",
				background: spr_background,
				sceneText: "You fuel your day, not really paying attention to your nourishment, just mindlessly consuming your morning's energy.  You gulp down a few good mouthfuls of bad coffee and [[head to work.]]",
				options: [
					["head to work.", goToSceneIndex, [20]],
					]
				},
			{
				sceneIndex: 20,
				sceneName: "head to work.",
				background: spr_background,
				sceneText: "Your lab is abuzz with activity.  Somber Doctors and Engineers nod their heads to you in deference as you traverse the labarynth of hallways to your new office.  Which floor was it on again?  You board the elevator and...\n[[Press 13]]\n[[Press 4]]\n[[Press R]]",
				options: [
					["Press 13", goToSceneIndex, [23]],
					["Press 4", goToSceneIndex, [22]],
					["Press R", goToSceneIndex, [6]],
					]
				},
			{
				sceneIndex: 21,
				sceneName: "OtherChoice",
				background: street_past,
				sceneText: "[[Opening scene]]",
				options: [
					["Opening scene", goToSceneIndex, [14]],
					]
				},
			{
				sceneIndex: 22,
				sceneName: "Press 4",
				background: spr_background,
				sceneText: "You head through the canteen on your way up to level 13 where your offices await you.  You're breakfast dulled the edge of hunger but you're still craving something.\n[[Grab a gooey cinnamon bun]]\n[[Grab a banana]]",
				options: [
					["Grab a gooey cinnamon bun", goToSceneIndex, [11]],
					["Grab a banana", goToSceneIndex, [9]],
					]
				},
			{
				sceneIndex: 23,
				sceneName: "Press 13",
				background: spr_background,
				sceneText: "You press the button marked 13, and head to your personal offices.  Hoping to catch up on some paperwork, you continue through the slightly unpleasant smell of carpet adhesive and sit behind your desk.\nYou can\n[[Immediately get to work]]\nor\n[[Fidget for a moment, putting off the tasks of the day]]",
				options: [
					["Immediately get to work", goToSceneIndex, [1]],
					["Fidget for a moment, putting off the tasks of the day", goToSceneIndex, [16]],
					]
				},
			{
				sceneIndex: 24,
				sceneName: "Take a cold shower-battle",
				background: spr_background,
				sceneText: "{battle cold shower demons}\n[[Take a cold shower]]",
				options: [
					["Take a cold shower", goToSceneIndex, [3]],
					]
				},
			{
				sceneIndex: 25,
				sceneName: "Your alarm wakes you",
				background: spr_background,
				sceneText: "You jolt into reality.  Falling asleep again was a bad idea.\n[[shake it off -- spend 1 resilience point]]\n[[proceed to 'have a day'  -- lose one alertness point, gain status 'Having a day.']]",
				options: [
					["shake it off -- spend 1 resilience point", goToSceneIndex, [4]],
					["proceed to 'have a day'  -- lose one alertness point, gain status 'Having a day.'", goToSceneIndex, [5]],
					]
				},
			{
				sceneIndex: 26,
				sceneName: "Go back to bed",
				background: street_past,
				sceneText: "You roll over, fold your pillow in half, hunker under your blanket, and try to recapture the magic of unconciousness.  Your fear begins to rise as you breathe slowly for an eternal five minutes, but you realize your thoughts are wandering.  You dream of a party you never attended.  Unfamiliar faces loom in and out of shadow, costumed waitstaff bringing drinks or food depending on when you look at them.  A celebra-- JANGLEJANGLEJANGLEDING.  JANGLEJANGLEJANGLEDING.\n[[Your alarm wakes you]]",
				options: [
					["Your alarm wakes you", goToSceneIndex, [25]],
					]
				},
		]
	}
}







function goToSceneIndex(parameters){
	global.currentIndex=parameters[0];
	destroyAllObjects();
	populateAllObjects();
}