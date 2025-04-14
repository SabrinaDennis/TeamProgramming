function DialogStructManager(){
	return {
		scenes:
		[

			{
				sceneIndex: 0,
				sceneName: "Opening scene",
				background: spr_background, character: WB_future_neutral, blocked:["brassKey", [0], [15]],
				sceneText: "It's too early.  It's dark and it's quiet and it's warm but it's too early.  Your muffled thoughts slowly resolve themselves into enough clarity to question how long you have left... before your alarm.\nToo long.\nIt's too early.\nGo back to bed\nTake advantage of the extra... ugh... hour",
				options: [
					["Go back to bed", goToSceneIndex, [51]],
					["Take advantage of the extra... ugh... hour", goToSceneIndex, [33]],
					]
				},
			{
				sceneIndex: 1,
				sceneName: "Approach and introduce yourself",
				background: spr_background, character: WB_future_confused,
				sceneText: "'Can I help you?' William asks without looking up, then freezes when he sees your face. Recognition flickers in his eyes, though you've never met in this time.\n'I... do I know you?' he asks, voice uncertain.\nWhen you introduce yourself, he sets down his tools with careful precision. 'Strange. I feel like we've met.' He laughs nervously. 'Been having the oddest dreams lately. About a house that stood here, long ago.'\nHis eyes search yours. 'You were in them.'\nShow him the brass key\nAsk about his dreams\nMention the others",
				options: [
					["Show him the brass key", goToSceneIndex, [27]],
					["Ask about his dreams", goToSceneIndex, [-1]],
					["Mention the others", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 2,
				sceneName: "Return to your office",
				background: spr_background,
				sceneText: "You make your way back to your office, the brass key heavy in your pocket. The familiar surroundings feel somehow different nowâ€”as if you're seeing the hidden layers beneath ordinary reality.\nYour computer screen shows several urgent emails. Work continues, oblivious to your temporal adventure.\nBut something catches your eyeâ€”a notification about a building-wide systems test scheduled for today. Something about it feels significant.\nCheck the notification details\nLook for William Beck\nLook for Nichole\nHead to the roof",
				options: [
					["Check the notification details", goToSceneIndex, [22]],
					["Look for William Beck", goToSceneIndex, [-1]],
					["Look for Nichole", goToSceneIndex, [-1]],
					["Head to the roof", goToSceneIndex, [39]],
					]
				},
			{
				sceneIndex: 3,
				sceneName: "shake it off -- spend 1 resilience point",
				background: theater_past,
				sceneText: "You shudder, focus all your mental energy, and just decide to move on.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [45]],
					]
				},
			{
				sceneIndex: 4,
				sceneName: "Focus on getting to the days work.",
				background: spr_background,
				sceneText: "Press 13",
				options: [
					["Press 13", goToSceneIndex, [48]],
					]
				},
			{
				sceneIndex: 5,
				sceneName: "Meet William Beck",
				background: spr_background, character: WB_future_focused,
				sceneText: "You spot him in the maintenance areaâ€”a man with a familiar face, though dressed in modern clothes and lacking the confident posture of his historical counterpart.\nWilliam Beck works methodically on an electrical panel, muttering to himself. He hasn't noticed you yet.\nThere's something about himâ€”an echo of the man you met in another time. The same features arranged in a more uncertain expression.\nApproach and introduce yourself\nObserve him a moment longer\nWalk away",
				options: [
					["Approach and introduce yourself", goToSceneIndex, [1]],
					["Observe him a moment longer", goToSceneIndex, [-1]],
					["Walk away", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 6,
				sceneName: "Threaten him for straight answers",
				character: WB_past_mischievous, background: house_past,
				sceneText: "William's laugh is bright and genuine in response to your threats.\n'Oh, I like you! Such spirit!' He circles you with casual disregard for personal space. 'Threats won't get you anywhere useful, but they certainly make things interesting.'\nHe plucks an apple from a bowl and tosses it to you. 'Let's make a game of it instead. For every question you ask, I'll give one honest answer and one lie.'\nHis eyes sparkle. 'Your challenge is figuring out which is which.'\nReluctantly agree to his game\nDemand to meet someone else\nTry to use the key to leave",
				options: [
					["Reluctantly agree to his game", goToSceneIndex, [38]],
					["Demand to meet someone else", goToSceneIndex, [37]],
					["Try to use the key to leave", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 7,
				sceneName: "Margaret Ashford",
				background: house_past, character: MT_past_neutral, onOpen: {addFriend: ["Margaret"]},
				sceneText: "...a woman standing on the other side of a workbench, hammering what appears to be a brass mechanism with surprising force. Without turning, she speaks: 'William's found another one, has he?'\nShe pivots suddenly, eyes flashing with intelligence and barely-contained energy. Her sleeves are rolled up, hands stained with various substances, a leather apron protecting clothes that seem designed for movement rather than fashion.\n'Margaret Ashford. You're displaced. Temporally.' She states this as fact, not question. 'Interesting. You're different from the others.'\nAsk how you're different\nAsk about her work\nAsk how to get home\nRun Away!",
				options: [
					["Ask how you're different", goToSceneIndex, [-1]],
					["Ask about her work", goToSceneIndex, [-1]],
					["Ask how to get home", goToSceneIndex, [-1]],
					["Run Away!", goToSceneIndex, [47]],
					]
				},
			{
				sceneIndex: 8,
				sceneName: "Grab a banana",
				background: spr_background,
				sceneText: "{gain a banana} This will bring a longing no food could fill closer to comfort.  You make a mental note to wrap the banana's peel in newspaper before throwing it out.  Your keen nose will be distracted all day if you don't.\nTake your banana back to the elevator and \nPress R\nPress 13",
				options: [
					["Press R", goToSceneIndex, [30]],
					["Press 13", goToSceneIndex, [48]],
					]
				},
			{
				sceneIndex: 9,
				sceneName: "Ask about the key",
				character: WB_past_curious, background: house_past,
				sceneText: "'Ah, the key!' William snags it from your hand with nimble fingers before you can protest. 'One of many such objects that... bend certain rules.'\nHe flips it casually, catching it without looking. 'Found it, did you? Or perhaps it found you.'\nHe returns it with unexpected gentleness. 'These objects appear to those standing at crossroads. People whose choices matter more than most.'\nHe winks. 'Make of that what you will.'\nAsk why you're here\nAsk to meet the others\nTry to use the key to return",
				options: [
					["Ask why you're here", goToSceneIndex, [-1]],
					["Ask to meet the others", goToSceneIndex, [-1]],
					["Try to use the key to return", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 10,
				sceneName: "'Where am I?'",
				character: WB_past_smile, background: house_past,
				sceneText: "'You sit 'pon the floor, stranger.  The floor of a modest home in Southwark.  Southwark being a dot on a map of England.  England being a nation in the temporal world, and the temporal world being a location you must yourself interpret the nature of.  I find your accent unplaceable, and I, being a listener by virtue and trade, am implaccable when it comes to the unexpected and the new.  Of which you number both.  Enrobe thyself and I shall impose you upon my brothers, who shall upbraid me for being untimely anon.'\nRun Away! \n'Who are you?'\nPut on a few layers of wool and follow him to adventure",
				options: [
					["Run Away!", goToSceneIndex, [47]],
					["'Who are you?'", goToSceneIndex, [44]],
					["Put on a few layers of wool and follow him to adventure", goToSceneIndex, [49]],
					]
				},
			{
				sceneIndex: 11,
				sceneName: "Immediately get to work",
				background: spr_background, blocked:["strange brass key",[32], [19] ],
				sceneText: "You turn your attention to the day's work.  More than most days it pulls at your soul, having to be soullessly chummy with the representatives of the universe that keeps your research empire afloat.  A handshake agreement here, a conspiratorial gesture of goodwill there...  It kills the soul for a prize you won 20 years ago and will never win.  Suddenly, and without warning you have the ability to comprehend, temporal fracture death takes you.",
				options: [
					]
				},
			{
				sceneIndex: 12,
				sceneName: "Meet Nichole",
				background: spr_background, character: ND_future_curious,
				sceneText: "The elevator doors open at the 13th floor, and you nearly collide with someone exiting.\n'Oh! Sorry about that,' says a voice that sounds oddly familiar.\nYou find yourself face to face with Nichole Draytone. Something about her strikes you as familiar beyond just working in the same building. Her careful movements, the organized stack of files she carries, the thoughtful look in her eyes that seems to recognize you more than a casual colleague should.\n'Have we...met before?' she asks, tilting her head slightly.\nSay you're not sure\nMention dÃ©jÃ  vu\nAsk about her work",
				options: [
					["Say you're not sure", goToSceneIndex, [-1]],
					["Mention dÃ©jÃ  vu", goToSceneIndex, [-1]],
					["Ask about her work", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 13,
				sceneName: "Investigate the test location",
				background: spr_background,
				sceneText: "You follow the directions in the email to the basement level. In a room normally restricted to authorized personnel, you find a device that looks like nothing you've ever seenâ€”part quantum computer, part antique clockwork.\nIt hums with increasing intensity. Near it stands a clipboard with a countdown: 15 minutes until activation.\nLooking closer, you notice familiar symbols etched into its frameâ€”the same patterns you saw on Margaret's workbench in 1847.\nLook for modern Margaret/Margueritte\nTry to disable the device\nWait and observe what happens",
				options: [
					["Look for modern Margaret/Margueritte", goToSceneIndex, [-1]],
					["Try to disable the device", goToSceneIndex, [-1]],
					["Wait and observe what happens", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 14,
				sceneName: "William Redbrook",
				character: WB_past_smile, background: house_past, onLoad: {func: addFriend, param: ["William"]},
				sceneText: "'And who are you?'\nA smirking voice opens your eyes, and you're faced with a stranger.\nYou look around and realize, not only is the person you're looking at a complete unknown to you, but your surroundings are unfamiliar. Is this some kind of film set? Wooden fixtures decorate a cozy, homey, --WAIT! what the heck is going on!\nAsk questions\nRun Away!\nDemand answers immediately",
				options: [
					["Ask questions", goToSceneIndex, [31]],
					["Run Away!", goToSceneIndex, [47]],
					["Demand answers immediately", goToSceneIndex, [20]],
					]
				},
			{
				sceneIndex: 15,
				sceneName: "Nicholas Drayton",
				background: house_past, character:ND_past_neutral, onOpen: {addFriend: ["Nicholas"]},
				sceneText: "'Well, well,' the figure says, leaning against a well-worn desk, eyes bright with curiosity rather than alarm at your sudden appearance. 'Another unexpected visitor. William does have a habit of collecting strays.'\nNicholas Drayton stands before you, immaculately dressed yet comfortable, with a gentle smile that invites confidence. \n'You seem disoriented. Tea helps with that, in my experience. Or perhaps something stronger?'\nAsk Nicholas about this place\nAsk Nicholas about himself\nAsk about William Redbrook\nRun Away!",
				options: [
					["Ask Nicholas about this place", goToSceneIndex, [-1]],
					["Ask Nicholas about himself", goToSceneIndex, [-1]],
					["Ask about William Redbrook", goToSceneIndex, [-1]],
					["Run Away!", goToSceneIndex, [47]],
					]
				},
			{
				sceneIndex: 16,
				sceneName: "Press 4",
				background: spr_background,
				sceneText: "You head through the canteen on your way up to level 13 where your offices await you.  You're breakfast dulled the edge of hunger but you're still craving something.\nGrab a gooey cinnamon bun\nGrab a banana",
				options: [
					["Grab a gooey cinnamon bun", goToSceneIndex, [34]],
					["Grab a banana", goToSceneIndex, [8]],
					]
				},
			{
				sceneIndex: 17,
				sceneName: "Take a cold shower-battle",
				background: spr_background,
				sceneText: "{battle cold shower demons}\nTake a cold shower",
				options: [
					["Take a cold shower", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 18,
				sceneName: "Gather your temporal allies first",
				background: spr_background,
				sceneText: "You realize you need help from all three of your time-displaced friends and their modern counterparts. With determined speed, you track down:\nWilliam Beck in maintenance, who grins with unexpected recognition when you mention temporal boundaries.\nNichole Draytone from accounting, whose organizational mind quickly grasps the patterns you describe.\nMargueritte Travers from R&D, who seems to have been waiting for this moment all along.\nTogether, you formulate a plan to address whatever is about to happen at 3:00 PM.\nConfront Dr. Fracture as a group\nSplit up to cover more ground\nUse the brass key with your allies",
				options: [
					["Confront Dr. Fracture as a group", goToSceneIndex, [-1]],
					["Split up to cover more ground", goToSceneIndex, [-1]],
					["Use the brass key with your allies", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 19,
				sceneName: "You notice... the key",
				background: spr_background, character: WB_future_neutral,
				sceneText: "The key grows hot in your palm-- too hot. The air thickens and tears.\nTemporal fracture death",
				options: [
					["Temporal fracture death", goToSceneIndex, [32]],
					]
				},
			{
				sceneIndex: 20,
				sceneName: "Demand answers immediately",
				character: WB_past_mischievous, background: house_past,
				sceneText: "'Demanding, aren't we? I do appreciate directness.' William's grin widens rather than diminishes at your outburst.\n'Short version? You've stumbled across times. This is London, 1647. That brass key you found? Quite the peculiar object.' He flourishes dramatically. 'And I'm the son of Eris tasked to help you make sense of it all.'\nHe leans closer. 'Or perhaps lead you further into delightful trouble. I haven't decided which yet.'\nAsk about the key\nAsk to meet the others\nThreaten him for straight answers",
				options: [
					["Ask about the key", goToSceneIndex, [9]],
					["Ask to meet the others", goToSceneIndex, [-1]],
					["Threaten him for straight answers", goToSceneIndex, [6]],
					]
				},
			{
				sceneIndex: 21,
				sceneName: "Your alarm wakes you",
				background: street_past, character: MT_future_neutral,
				sceneText: "You jolt into reality.  Falling asleep again was a bad idea.\nshake it off -- spend 1 resilience point\nproceed to 'have a day'  -- lose one alertness point, gain status 'Having a day.'",
				options: [
					["shake it off -- spend 1 resilience point", goToSceneIndex, [3]],
					["proceed to 'have a day'  -- lose one alertness point, gain status 'Having a day.'", goToSceneIndex, [29]],
					]
				},
			{
				sceneIndex: 22,
				sceneName: "Check the notification details",
				background: spr_background,
				sceneText: "The notification mentions a 'comprehensive systems diagnostic' scheduled for 3:00 PM today, focusing on the building's experimental energy management system.\nThe message is signed by the head of Research & Development, Dr. T. Fracture.\nA strange chill runs through you as you read the name. Something about this test feels connected to what William told you about temporal boundaries weakening.\nThe clock reads 2:30 PM.\nContact Dr. Fracture immediately\nGather your temporal allies first\nInvestigate the test location",
				options: [
					["Contact Dr. Fracture immediately", goToSceneIndex, [35]],
					["Gather your temporal allies first", goToSceneIndex, [18]],
					["Investigate the test location", goToSceneIndex, [13]],
					]
				},
			{
				sceneIndex: 23,
				sceneName: "Meet Margueritte",
				background: spr_background, character: MT_future_smile,
				sceneText: "The roof garden is quiet this early. As you step from the elevator, you notice a woman standing at the edge, looking out over the city.\nShe turns at your approachâ€”tall, confident, wearing practical clothes that somehow look perfectly professional. Her eyes widen slightly at the sight of you.\n'Well,' she says, voice rich with amusement. 'I was wondering when you'd find your way here.'\nMargueritte Travers extends her hand. 'But you don't remember meeting me yet, do you? How interesting.'\nShow her Margaret's symbol\nAsk how she knows you\nAsk about the brass key",
				options: [
					["Show her Margaret's symbol", goToSceneIndex, [-1]],
					["Ask how she knows you", goToSceneIndex, [-1]],
					["Ask about the brass key", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 24,
				sceneName: "Investigate the shiny object you notice out of the corner of your eye?",
				background: spr_background,
				sceneText: "You pause for a moment, happy for an excuse to put off the day's work.  You reach down for the scuffed metal object, notice it's a large brass key.  The antique object is worn to brushed shininess in two places.  The part where...  Is it suddenly really warm?  The part where it would be held, and the whatever, the blade of the key is old timey and why is it hard to see and think of word for th wher\nPass out",
				options: [
					["Pass out", goToSceneIndex, [36]],
					]
				},
			{
				sceneIndex: 25,
				sceneName: "Take a cold shower",
				background: spr_background,
				sceneText: "The ice in your veins meets the steely sting of the water.  You feel the adrenaline course its way into your limbs.  Your mind begins to wake up, shocked into resourcefulness by your masachistic routine.\n{gain 1 alertness point}\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [45]],
					]
				},
			{
				sceneIndex: 26,
				sceneName: "Lost between times",
				onOpen: {theEnd: ["tragic"]},
				sceneText: "Something goes wrong during the crisis. The key slips from your grasp at the crucial moment.\nYou find yourself drifting, untethered from time. Moments flow around youâ€”snippets of lives, fragments of history, glimpses of futures that may never come to pass.\nYou try to scream, but sound requires time to travel. You try to move, but motion requires time to occur.\nYou exist everywhere and nowhere, watching the world but unable to touch it. Occasionally, you glimpse familiar facesâ€”William, Nicholas, Margaretâ€”searching for you across centuries.\nBut they cannot reach you in this timeless void.",
				options: [
					]
				},
			{
				sceneIndex: 27,
				sceneName: "Show him the brass key",
				background: spr_background, character: WB_future_intense,
				sceneText: "The moment you produce the key, William Beck's eyes widen. His hand trembles slightly as he reaches toward it, stopping just short of touching.\n'I've been drawing this,' he whispers. 'Over and over. Couldn't understand why.'\nHis gaze shifts from the key to your face. 'You know what this means, don't you? You've been there.'\nSomething changes in his postureâ€”a shadow of his counterpart's confidence emerging. 'The othersâ€”have you found them too? We don't have much time.'\nAsk what he means by 'not much time'\nTell him about meeting his past self\nSuggest finding the others",
				options: [
					["Ask what he means by 'not much time'", goToSceneIndex, [-1]],
					["Tell him about meeting his past self", goToSceneIndex, [-1]],
					["Suggest finding the others", goToSceneIndex, [28]],
					]
				},
			{
				sceneIndex: 28,
				sceneName: "Suggest finding the others",
				sceneText: "You suggest that reuniting with the others might be key; he agrees with a slight nod.\nFinal Resolution",
				options: [
					["Final Resolution", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 29,
				sceneName: "proceed to 'have a day'  -- lose one alertness point, gain status 'Having a day.'",
				background: spr_background,
				sceneText: "Alright.  Morning: tough.  Side of the bed: Wrong.  Day:  Having a.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [45]],
					]
				},
			{
				sceneIndex: 30,
				sceneName: "Press R",
				background: spr_background,
				sceneText: "You press R on the elevator to get some air.  After a brief existential whirr, the doors open on the roof of the building.  You step out, gulp a few mouthfuls of air and steel your nerves for the day.  As you're about to turn back to the elevators, you notice something.\nDo you\nInvestigate the shiny object you notice out of the corner of your eye?\nor do you\nFocus on getting to the days work.",
				options: [
					["Investigate the shiny object you notice out of the corner of your eye?", goToSceneIndex, [24]],
					["Focus on getting to the days work.", goToSceneIndex, [4]],
					]
				},
			{
				sceneIndex: 31,
				sceneName: "Ask questions",
				character: WB_past_smile, background: house_past,
				sceneText: "You ask your ersatz host five questions at the same time, but all that surfaces is a hoarsely muttered 'gruuhhhmuhhh.' --'Here, strange being.  You look parched.' --The owner of the smirking voice hands you a glass of water and you gulp it down with as much dignity as you can muster.  It's not much.\n'Where am I?'\n'Who are you?'",
				options: [
					["'Where am I?'", goToSceneIndex, [10]],
					["'Who are you?'", goToSceneIndex, [44]],
					]
				},
			{
				sceneIndex: 32,
				sceneName: "Temporal fracture death",
				onOpen: {theEnd: ["tragic"]},
				sceneText: "The experimental device activates before you can reach it. Reality seems to fold in on itself around you.\nYou try to scream but no sound emerges. Your body feels simultaneously compressed and stretched, as if existing in multiple places at once.\nThrough the haze of agony, you catch glimpsesâ€”London streets, your office, places you've never seenâ€”all superimposed like multiple exposures on a single photograph.\nWith terrible clarity, you realize: you're being pulled apart across time itself.",
				options: [
					]
				},
			{
				sceneIndex: 33,
				sceneName: "Take advantage of the extra... ugh... hour",
				background: spr_background,
				sceneText: "You groan, perhaps a bit dramatically, for no one's benefit.  You tumble your legs out of the bed, hoping peer pressure will rouse the rest of you.  Standing unsteadily, you blear your way to the bathroom, relieve yourself, and attempt to jump start your day.\nTake a hot shower\nTake a cold shower-battle",
				options: [
					["Take a hot shower", goToSceneIndex, [40]],
					["Take a cold shower-battle", goToSceneIndex, [17]],
					]
				},
			{
				sceneIndex: 34,
				sceneName: "Grab a gooey cinnamon bun",
				background: spr_background,
				sceneText: "{gain cinnamon bun}  This treat will hserve as external courage to face the day's work tasks.  You silently thank yourself for the private washroom in your new offices as you notice the small package smearing sugary deliciousness on your pinkie.  Stepping back into the empty elevator, you \nPress R\nPress 13",
				options: [
					["Press R", goToSceneIndex, [30]],
					["Press 13", goToSceneIndex, [48]],
					]
				},
			{
				sceneIndex: 35,
				sceneName: "Contact Dr. Fracture immediately",
				background: spr_background,
				sceneText: "You reach Dr. Fracture's office just before the test. The scientist who greets you seems ordinary enough, but something about their eyes reminds you of the void between times.\n'You feel it too, don't you?' they ask without preamble. 'The thinning of boundaries.'\nThey gesture to a device humming in the corner. 'This will either seal the breaches permanently or...' they hesitate, '...accelerate the process. I'm not entirely sure which.'\nThe clock reads 2:55 PM.\nTry to stop the experiment\nOffer to help refine the experiment\nUse the brass key on the device",
				options: [
					["Try to stop the experiment", goToSceneIndex, [-1]],
					["Offer to help refine the experiment", goToSceneIndex, [-1]],
					["Use the brass key on the device", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 36,
				sceneName: "Pass out",
				background: spr_background, gain: key,
				sceneText: "Your thoughts swirl half formed.  Maybe you hear shouting.  Maybe it's your mind trying to make sense of the rushing sound in your ears on the edge of intelligibility.  You think of faces half seen during your day.  The roar gets louder and you find yourself face to face with\nWilliam Redbrook\nNicholas Drayton\nMargaret Ashford",
				options: [
					["William Redbrook", goToSceneIndex, [14]],
					["Nicholas Drayton", goToSceneIndex, [15]],
					["Margaret Ashford", goToSceneIndex, [7]],
					]
				},
			{
				sceneIndex: 37,
				sceneName: "Demand to meet someone else",
				sceneText: "You insist on meeting someone else; your request is acknowledged briefly.\nFinal Resolution",
				options: [
					["Final Resolution", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 38,
				sceneName: "Reluctantly agree to his game",
				sceneText: "Reluctantly, you agree to his proposed game of truths and lies.\nFinal Resolution",
				options: [
					["Final Resolution", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 39,
				sceneName: "Head to the roof",
				sceneText: "Stepping onto the roof, you take a quiet moment to view the city before proceeding.\nFinal Resolution",
				options: [
					["Final Resolution", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 40,
				sceneName: "Take a hot shower",
				background: spr_background,
				sceneText: "You relax under the calming water, letting your anger at the world for existing melt like ice and flake off of you in layers.  Your jaw ucleanches.  You're not happy with today, but you're a little more ready for it.\n{gain a resilience point}\nYou towel off and sit on the bed, relaxing for just a moment... stretching out feels... so nice...\nYour alarm wakes you",
				options: [
					["Your alarm wakes you", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 41,
				sceneName: "Fidget for a moment, putting off the tasks of the day",
				background: spr_background,
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 42,
				sceneName: "Peaceful resolution",
				onOpen: {theEnd: ["peaceful"]},
				sceneText: "Together with your newfound allies across time, you identify the source of the temporal disturbance: Dr. Fracture's experimental device in your company's research lab.\nWhen the moment of crisis arrives, you're prepared. With William's courage, Nicholas's knowledge, and Margaret's ingenuityâ€”multiplied across their various incarnationsâ€”you stabilize the fracture.\nAs the boundaries between times heal, you feel your connections to the past growing fainter. Your memories of your adventures begin to fade.\nBut something remainsâ€”friendships forged across centuries, and the quiet knowledge that together, you saved more than one world.\nYour brass key turns to dust, its purpose fulfilled.",
				options: [
					]
				},
			{
				sceneIndex: 43,
				sceneName: "Meet Billie",
				background: spr_background, character: WB_future_smile,
				sceneText: "You find her in the company cafÃ©, holding court among a cluster of fascinated colleagues. Even in modern business attire, Billie Rochelle-Ross radiates the same chaotic energy as her historical counterpart.\nWhen she spots you, she abruptly abandons her audience mid-story, making a beeline toward you.\n'Finally!' she says, as if continuing a conversation. 'I've been waiting for someone interesting to show up.'\nHer grin is eerily familiar. 'You've got that look. Like you've seen the impossible.'\nAsk if she remembers you\nShow her the brass key\nAsk about the building",
				options: [
					["Ask if she remembers you", goToSceneIndex, [-1]],
					["Show her the brass key", goToSceneIndex, [-1]],
					["Ask about the building", goToSceneIndex, [-1]],
					]
				},
			{
				sceneIndex: 44,
				sceneName: "'Who are you?'",
				character: WB_past_smile, background: house_past,
				sceneText: "'Forgive my boldness in ignoring your question... You seem to have wandered into my home, and what curiosity hath struck me as I noticed your form owns a familiar echo to the beginnings adventure.  Let us tarry not.  Don this costume and we shall visit you upon my brothers.'\nRun Away! \n'Where am I?' \nPut on a few layers of wool and follow him to adventure",
				options: [
					["Run Away!", goToSceneIndex, [47]],
					["'Where am I?'", goToSceneIndex, [10]],
					["Put on a few layers of wool and follow him to adventure", goToSceneIndex, [49]],
					]
				},
			{
				sceneIndex: 45,
				sceneName: "Finish getting ready and eat some breakfast",
				sceneText: "You complete your preparations and eat a modest breakfast before heading to work.\nhead to work.",
				options: [
					["head to work.", goToSceneIndex, [46]],
					]
				},
			{
				sceneIndex: 46,
				sceneName: "head to work.",
				background: spr_background,
				sceneText: "Your lab is abuzz with activity.  Somber Doctors and Engineers nod their heads to you in deference as you traverse the labarynth of hallways to your new office.  Which floor was it on again?  You board the elevator and...\nPress 13\nPress 4\nPress R",
				options: [
					["Press 13", goToSceneIndex, [48]],
					["Press 4", goToSceneIndex, [16]],
					["Press R", goToSceneIndex, [30]],
					]
				},
			{
				sceneIndex: 47,
				sceneName: "Run Away!",
				onOpen: {theEnd: ["sad"]},
				sceneText: "You dash, screaming with indignity, and find yourself in a busy street.  A horse attempts to avoid your sudden appearance, but swerving only serves to topple a carriage on top of you.\nYou die as you lived.  Utterly accidentally.",
				options: [
					]
				},
			{
				sceneIndex: 48,
				sceneName: "Press 13",
				background: spr_background,
				sceneText: "You press the button marked 13, and head to your personal offices.  Hoping to catch up on some paperwork, you continue through the slightly unpleasant smell of carpet adhesive and sit behind your desk.\nYou can\nImmediately get to work\nor\nFidget for a moment, putting off the tasks of the day",
				options: [
					["Immediately get to work", goToSceneIndex, [11]],
					["Fidget for a moment, putting off the tasks of the day", goToSceneIndex, [41]],
					]
				},
			{
				sceneIndex: 49,
				sceneName: "Put on a few layers of wool and follow him to adventure",
				 background: street_past, onOpen: {theEnd: ["neutral"]},
				sceneText: "Your new ... friend? introduces himself as Rebrook, called William.  He brings you to a theater where you are introduced with much more dignity and ettiquete to a band of actors.  You find yourself put at ease, lulled by their strange accents into a relaxed state.  After their day's rehearsal for some new theatrical work of locally existential importance, your thoughts turn to returning ... somewhere?\nOver the years the past fades.  You die a few years after the love of your life.  A life obscured by time and forgotten by everything but decay.\nNot bad.",
				options: [
					]
				},
			{
				sceneIndex: 50,
				sceneName: "Heroic sacrifice",
				onOpen: {theEnd: ["heroic"]},
				sceneText: "The building shakes. Emergency alarms blare. You understand nowâ€”this is the moment William spoke of.\nAs others flee, you move against the tide, toward the source of the disturbance. The brass key burns hot in your pocket.\nYou find the temporal fracture in the basementâ€”reality itself tearing open, past and future bleeding together.\nYou know what must be done. Using the key as William showed you, you seal the breach with yourself inside.\nYour body disintegrates across a thousand years, but time stabilizes.\nIn three different centuries, three friends raise a glass to your memory.",
				options: [
					]
				},
			{
				sceneIndex: 51,
				sceneName: "Go back to bed",
				background: house_past, character: ND_future_neutral,
				sceneText: "You roll over, fold your pillow in half, hunker under your blanket, and try to recapture the magic of unconciousness.  Your fear begins to rise as you breathe slowly for an eternal five minutes, but you realize your thoughts are wandering.  You dream of a party you never attended.  Unfamiliar faces loom in and out of shadow, costumed waitstaff bringing drinks or food depending on when you look at them.  A celebra-- JANGLEJANGLEJANGLEDING.  JANGLEJANGLEJANGLEDING.\nYour alarm wakes you",
				options: [
					["Your alarm wakes you", goToSceneIndex, [21]],
					]
				},
		]
	}
}



