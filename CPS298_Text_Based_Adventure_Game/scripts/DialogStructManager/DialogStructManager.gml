
function DialogStructManager(){
	return {
		scenes:
		[

			{
				sceneIndex: 0,
				sceneName: "0 passage to illustrate",
				sceneText: "This is passage text\n\n{this is something that happens because you're in this passage}\n\n[[This is a choice.  It goes to a passage with this title.]]\n\nThis is a choice that goes to a passage with a different title\n[[OtherChoice]]",
				options: [
					["This is a choice.  It goes to a passage with this title.", goToSceneIndex, [14]],
					["OtherChoice", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 1,
				sceneName: "Immediately get to work",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 2,
				sceneName: "Investigate the shiny object you notice out of the corner of your eye?",
				sceneText: "You pause for a moment, happy for an excuse to put off the day's work.  You reach down for the scuffed metal object, notice it's a large brass key.  The antique object is worn to brushed shininess in two places.  The part where...  Is it suddenly really warm?  The part where it would be held, and the whatever, the blade of the key is old timey and why is it hard to see and think of word for th wher\n\n[[Pass out]]",
				options: [
					["Pass out", goToSceneIndex, [13]],
					]
				},
			{
				sceneIndex: 3,
				sceneName: "Take a cold shower",
				sceneText: "The ice in your veins meets the steely sting of the water.  You feel the adrenaline course its way into your limbs.  Your mind begins to wake up, shocked into resourcefulness by your masachistic routine.\n\n{gain 1 alertness point}\n\n[[Finish getting ready and eat some breakfast]]",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 4,
				sceneName: "shake it off -- spend 1 resilience point",
				sceneText: "You shudder, focus all your mental energy, and just decide to move on.\n\n[[Finish getting ready and eat some breakfast]]",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 5,
				sceneName: "Press R",
				sceneText: "You press R on the elevator to get some air.  After a brief existential whirr, the doors open on the roof of the building.  You step out, gulp a few mouthfuls of air and steel your nerves for the day.  As you're about to turn back to the elevators, you notice something.\n\nDo you\n\n[[Investigate the shiny object you notice out of the corner of your eye?]]\n\nor do you\n\n[[Focus on getting to the days work.]]",
				options: [
					["Investigate the shiny object you notice out of the corner of your eye?", goToSceneIndex, [2]],
					["Focus on getting to the days work.", goToSceneIndex, [7]],
					]
				},
			{
				sceneIndex: 6,
				sceneName: "Batbayarii AltanSetseg",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 7,
				sceneName: "Focus on getting to the days work.",
				sceneText: "[[Press 13]]",
				options: [
					["Press 13", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 8,
				sceneName: "Luciana Reyes",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 9,
				sceneName: "Margaret Ashford",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 10,
				sceneName: "Grab a banana",
				sceneText: "{gain a banana} This will bring a longing no food could fill closer to comfort.  You make a mental note to wrap the banana's peel in newspaper before throwing it out.  Your keen nose will be distracted all day if you don't.\n\nTake your banana back to the elevator and \n\n[[Press R]]\n\n[[Press 13]]",
				options: [
					["Press R", goToSceneIndex, [5]],
					["Press 13", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 11,
				sceneName: "Take advantage of the extra... ugh... hour",
				sceneText: "You groan, perhaps a bit dramatically, for no one's benefit.  You tumble your legs out of the bed, hoping peer pressure will rouse the rest of you.  Standing unsteadily, you blear your way to the bathroom, relieve yourself, and attempt to jump start your day.\n\n[[Take a hot shower]]\n\n[[Take a cold shower-battle]]",
				options: [
					["Take a hot shower", goToSceneIndex, [17]],
					["Take a cold shower-battle", goToSceneIndex, [26]],
					]
				},
			{
				sceneIndex: 12,
				sceneName: "Grab a gooey cinnamon bun",
				sceneText: "{gain cinnamon bun}  This treat will hserve as external courage to face the day's work tasks.  You silently thank yourself for the private washroom in your new offices as you notice the small package smearing sugary deliciousness on your pinkie.  Stepping back into the empty elevator, you \n\n[[Press R]]\n\n[[Press 13]]",
				options: [
					["Press R", goToSceneIndex, [5]],
					["Press 13", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 13,
				sceneName: "Pass out",
				sceneText: "Your thoughts swirl half formed.  Maybe you hear shouting.  Maybe it's your mind trying to make sense of the rushing sound in your ears on the edge of intelligibility.  You think of faces half seen during your day.  The roar gets louder and you find yourself face to face with\n\n[[William Redbrook]]\n\n[[Nicholas Drayton]]\n\n[[Margaret Ashford]]\n\n[[Luciana Reyes]]\n\n[[Batbayarii AltanSetseg]]",
				options: [
					["William Redbrook", goToSceneIndex, [19]],
					["Nicholas Drayton", goToSceneIndex, [20]],
					["Margaret Ashford", goToSceneIndex, [9]],
					["Luciana Reyes", goToSceneIndex, [8]],
					["Batbayarii AltanSetseg", goToSceneIndex, [6]],
					]
				},
			{
				sceneIndex: 14,
				sceneName: "This is a choice.  It goes to a passage with this title.",
				sceneText: "[[Opening scene]]",
				options: [
					["Opening scene", goToSceneIndex, [16]],
					]
				},
			{
				sceneIndex: 15,
				sceneName: "proceed to \"have a day\"  -- lose one alertness point, gain status 'Having a day.'",
				sceneText: "Alright.  Morning: tough.  Side of the bed: Wrong.  Day:  Having a.\n\n[[Finish getting ready and eat some breakfast]]",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 16,
				sceneName: "Opening scene",
				sceneText: "It's too early.  It's dark and it's quiet and it's warm but it's too early.  Your muffled thoughts slowly resolve themselves into enough clarity to question how long you have left... before your alarm.\n\nToo long.\n\nIt's too early.\n\n[[Go back to bed]]\n\n[[Take advantage of the extra... ugh... hour]]",
				options: [
					["Go back to bed", goToSceneIndex, [28]],
					["Take advantage of the extra... ugh... hour", goToSceneIndex, [11]],
					]
				},
			{
				sceneIndex: 17,
				sceneName: "Take a hot shower",
				sceneText: "You relax under the calming water, letting your anger at the world for existing melt like ice and flake off of you in layers.  Your jaw ucleanches.  You're not happy with today, but you're a little more ready for it.\n\n{gain a resilience point}\n\nYou towel off and sit on the bed, relaxing for just a moment... stretching out feels... so nice...\n\n[[Your alarm wakes you]]",
				options: [
					["Your alarm wakes you", goToSceneIndex, [27]],
					]
				},
			{
				sceneIndex: 18,
				sceneName: "Fidget for a moment, putting off the tasks of the day",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 19,
				sceneName: "William Redbrook",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 20,
				sceneName: "Nicholas Drayton",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 21,
				sceneName: "Finish getting ready and eat some breakfast",
				sceneText: "You fuel your day, not really paying attention to your nourishment, just mindlessly consuming your morning's energy.  You gulp down a few good mouthfuls of bad coffee and [[head to work.]]",
				options: [
					["head to work.", goToSceneIndex, [22]],
					]
				},
			{
				sceneIndex: 22,
				sceneName: "head to work.",
				sceneText: "Your lab is abuzz with activity.  Somber Doctors and Engineers nod their heads to you in deference as you traverse the labarynth of hallways to your new office.  Which floor was it on again?  You board the elevator and...\n\n[[Press 13]]\n\n[[Press 4]]\n\n[[Press R]]",
				options: [
					["Press 13", goToSceneIndex, [25]],
					["Press 4", goToSceneIndex, [24]],
					["Press R", goToSceneIndex, [5]],
					]
				},
			{
				sceneIndex: 23,
				sceneName: "OtherChoice",
				sceneText: "[[Opening scene]]",
				options: [
					["Opening scene", goToSceneIndex, [16]],
					]
				},
			{
				sceneIndex: 24,
				sceneName: "Press 4",
				sceneText: "You head through the canteen on your way up to level 13 where your offices await you.  You're breakfast dulled the edge of hunger but you're still craving something.\n\n[[Grab a gooey cinnamon bun]]\n\n[[Grab a banana]]",
				options: [
					["Grab a gooey cinnamon bun", goToSceneIndex, [12]],
					["Grab a banana", goToSceneIndex, [10]],
					]
				},
			{
				sceneIndex: 25,
				sceneName: "Press 13",
				sceneText: "You press the button marked 13, and head to your personal offices.  Hoping to catch up on some paperwork, you continue through the slightly unpleasant smell of carpet adhesive and sit behind your desk.\n\nYou can\n\n[[Immediately get to work]]\n\nor\n\n[[Fidget for a moment, putting off the tasks of the day]]",
				options: [
					["Immediately get to work", goToSceneIndex, [1]],
					["Fidget for a moment, putting off the tasks of the day", goToSceneIndex, [18]],
					]
				},
			{
				sceneIndex: 26,
				sceneName: "Take a cold shower-battle",
				sceneText: "{battle cold shower demons}\n\n[[Take a cold shower]]",
				options: [
					["Take a cold shower", goToSceneIndex, [3]],
					]
				},
			{
				sceneIndex: 27,
				sceneName: "Your alarm wakes you",
				sceneText: "You jolt into reality.  Falling asleep again was a bad idea.\n\n[[shake it off -- spend 1 resilience point]]\n\n[[proceed to \"have a day\"  -- lose one alertness point, gain status 'Having a day.']]",
				options: [
					["shake it off -- spend 1 resilience point", goToSceneIndex, [4]],
					["proceed to \"have a day\"  -- lose one alertness point, gain status 'Having a day.'", goToSceneIndex, [15]],
					]
				},
			{
				sceneIndex: 28,
				sceneName: "Go back to bed",
				sceneText: "You roll over, fold your pillow in half, hunker under your blanket, and try to recapture the magic of unconciousness.  Your fear begins to rise as you breathe slowly for an eternal five minutes, but you realize your thoughts are wandering.  You dream of a party you never attended.  Unfamiliar faces loom in and out of shadow, costumed waitstaff bringing drinks or food depending on when you look at them.  A celebra-- JANGLEJANGLEJANGLEDING.  JANGLEJANGLEJANGLEDING.\n\n[[Your alarm wakes you]]",
				options: [
					["Your alarm wakes you", goToSceneIndex, [27]],
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