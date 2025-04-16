function DialogStructManager(){
	return {
		scenes:
		[

			{
				sceneIndex: 0,
				sceneName: "It's too early.",
				background: spr_background, onLoad:{func: function test(_str){show_debug_message(_str)}, params:["test"]},
				sceneText: "The palm trees abruptly dim.\nIt's too early. It's dark and it's quiet and it's warm but it's too early. Your muffled thoughts slowly resolve themselves into enough clarity to question how long you have left... before your alarm.\nToo long.\nIt's too early.\nGo back to bed\nTake advantage of the extra... ugh... hour.",
				options: [
					["Go back to bed", goToSceneIndex, [61]],
					["Take advantage of the extra... ugh... hour.", goToSceneIndex, [33]],
					]
				},
			{
				sceneIndex: 1,
				sceneName: "'A toe?'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'Toes are useful.  But toes are soft.  They need protecting to be of much use at all.  Understood.'\nYou stare wide eyed at your surroundings, assessing how safe you are.  This appears to be a workshop?  smithy?  Jewelry store?  Every surface has an crafting tool on it, or many in small piles stacked here or there.  There are no machines, but something whirs or hums in the background.\n\nAsk your precise host some questions\nRun Away!",
				options: [
					["Ask your precise host some questions", goToSceneIndex, [19]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 2,
				sceneName: "'Wh..When? When are we?'",
				character: ND_past_smile, background: house_past,
				sceneText: "'OH!  excellently seen and important.  You're in the mid 1600s and since that's before you were born, you must have time travelled.'\nYou both wait in silence for a moment.  Rancifying oils on brass and bronze seep into your nostrils.  A small high pitched bell rings.  And rings again.\n'Can.. can you help me?",
				options: [
					["'Can.. can you help me?", goToSceneIndex, [22]],
					]
				},
			{
				sceneIndex: 3,
				sceneName: "Take the stairs",
				sceneText: "You... take the... stairs?  You're in an incredible hurry, so you breeze past the opening elevator doors to take... the stairs.  You make it a floor and a half before everyone (like Everyone everyone) dies in a Temporal Storm.",
				options: [
					["Temporal Storm", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 4,
				sceneName: "Follow",
				character: ND_past_neutral, background: house_past, addFriend:"Nicholas",
				sceneText: "'Also my name is Nicholas.  Please don't call me Nick, I don't like it..'",
				options: [
					]
				},
			{
				sceneIndex: 5,
				sceneName: "Take the elevator",
				background: office_present, onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press B",
				options: [
					["Press B", goToSceneIndex, [31]],
					]
				},
			{
				sceneIndex: 6,
				sceneName: "Focus on getting to the days work.",
				background: elevator_present,onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press 13",
				options: [
					["Press 13", goToSceneIndex, [56]],
					]
				},
			{
				sceneIndex: 7,
				sceneName: "Margaret Ashford",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 8,
				sceneName: "Grab a banana",
				background: office_present,
				find: ["banana"],
				sceneText: "This will bring a longing no food could fill closer to comfort.  You make a mental note to wrap the banana's peel in newspaper before throwing it out.  Your keen nose will be distracted all day if you don't. Take your banana back to the elevator and ...\nPress R\nPress 13",
				options: [
					["Press R", goToSceneIndex, [37]],
					["Press 13", goToSceneIndex, [56]],
					]
				},
			{
				sceneIndex: 9,
				sceneName: "'Please tell me what I'm supposed to do.'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'You are supposed to come here, now, moved by the weaving of unseeing uncaring hands.  You are supposed to bring a device back to me...  It is very hard to explain these things.  I make.  I don't explain.  I just make things from things and the things do things, and most people suffer a little and love a lot and that's okay and...'\n'I'm sorry.  It sounds like this is difficult for you.  Please.  I just want to make things good.'\n'Just tell me what the heck is going on!'",
				options: [
					["'I'm sorry.  It sounds like this is difficult for you.  Please.  I just want to make things good.'", goToSceneIndex, [11]],
					["'Just tell me what the heck is going on!'", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 10,
				sceneName: "Ask about the key",
				character: WB_past_neutral, background: house_past,
				sceneText: "'Ah, the key!' William brightens and snags it from your hand with nimble fingers before you can protest. 'One of many such objects that bend certain rules.'\nHe flips it casually, catching it while looking you dead in the eye. 'Found it, did you? Or perhaps it found you.'\nHe returns it with unexpected gentleness. 'These appear to those at crossroads. Those weary souls whose choices matter more than most.'\n\nTry to use the key to return\n'How can I help?'",
				options: [
					["Try to use the key to return", goToSceneIndex, [44]],
					["'How can I help?'", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 11,
				sceneName: "'I'm sorry.  It sounds like this is difficult for you.  Please.  I just want to make things good.'",
				character: ND_past_smile, background: house_past,
				sceneText: "This gets you brief but scouring eye contact.  Your host cracks a small smile.\n'I'll help you more than make things good.  Together let's make good things.  Follow me please.'\nFollow",
				options: [
					["Follow", goToSceneIndex, [4]],
					]
				},
			{
				sceneIndex: 12,
				sceneName: "'Where am I?'",
				character: WB_past_smile, background: house_past,
				sceneText: "'You sit 'pon the floor, stranger.  The floor of a modest home in Southwark.  Southwark being a dot on a map of England.  England being a nation in the temporal world, and the temporal world being a location you must yourself interpret the nature of.  I find your accent unplaceable, and I, being a listener by virtue and trade, am implaccable when it comes to the unexpected and the new.  Of which you number both.  I am Redbrook, called William.  Enrobe thyself and I shall impose you upon my brothers, who shall upbraid me for being untimely anon.'\nRun Away! \n'Who are you?'\n'Why am I here?'\nPut on a few layers of wool and follow him to adventure",
				options: [
					["Run Away!", goToSceneIndex, [55]],
					["'Who are you?'", goToSceneIndex, [50]],
					["'Why am I here?'", goToSceneIndex, [45]],
					["Put on a few layers of wool and follow him to adventure", goToSceneIndex, [57]],
					]
				},
			{
				sceneIndex: 13,
				sceneName: "'Have a day'",
				background: house_present, onLoad:{ func:find, params: "a day"},
				sceneText: "Alright.  Morning: tough.  Side of the bed: Wrong.  Day:  Having a.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [51]],
					]
				},
			{
				sceneIndex: 14,
				sceneName: "Immediately get to work",
				background: office_present,
				sceneText: "You open your email and sigh deeply.  You used to be an inspired researcher.  Now you're just the top of a beuraucratic heap.  Highest view from a mountain of dirt.  You connect people who need to connect.  You give your vision of what direction the organization should take.\nYou nearly sigh with relief when you're suddenly torn apart by an afternoon Temporal Storm.",
				options: [
					["Temporal Storm", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 15,
				sceneName: "Untitled Passage 1",
				sceneText: "You shake in your chair with a start.  Time travel feels an awful lot like a dream.  But there's the key on your desk in front of you.  Slightly embedded, actually.  As though key and desk had fought for the same spacial coordinates and compromised.  It sticks slightly, but pulls free.  The desk is terribly damaged, but the key itself is only slightly discolored.  Your computer blinks with an unanswered notification.  The window shows a sunny day, cloudless day, though somehow more dim than usual.\nCheck the notification details\nFocus on getting to the days work. \nRun Away from the Office!",
				options: [
					["Check the notification details", goToSceneIndex, [29]],
					["Focus on getting to the days work.", goToSceneIndex, [6]],
					["Run Away from the Office!", goToSceneIndex, [58]],
					]
				},
			{
				sceneIndex: 16,
				sceneName: "Investigate the test location",
				sceneText: "You scurry down to the lab, expecting to find the worst.  You hope there's time.\nTake the elevator\nTake the stairs",
				options: [
					["Take the elevator", goToSceneIndex, [5]],
					["Take the stairs", goToSceneIndex, [3]],
					]
				},
			{
				sceneIndex: 17,
				sceneName: "Put on a few layers of wool and follow William to information.",
				sceneText: "",
				options: [
					]
				},
			{
				sceneIndex: 18,
				sceneName: "William Redbrook",
				background: house_past, character: WB_past_smile, onLoad: {addFriend: ["William"]},
				sceneText: "'And who are you?'\nA smirking voice opens your eyes, and you're faced with a stranger.\nThe smell of an unwashed world attacks your nostrils.\nYou look around and realize, not only is the person you're looking at a complete unknown,  but your very surroundings are unfamiliar. Is this some kind of film set? Wooden fixtures decorate a cozy, homey, --WAIT! what the heck is going on!\nAsk questions\nRun Away!",
				options: [
					["Ask questions", goToSceneIndex, [39]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 19,
				sceneName: "Ask your precise host some questions",
				character: ND_past_neutral, background: house_past,
				sceneText: "'Wh... who are you?'\n'What is this place?'\n'Wait, where am I!?'",
				options: [
					["'Wh... who are you?'", goToSceneIndex, [54]],
					["'What is this place?'", goToSceneIndex, [41]],
					["'Wait, where am I!?'", goToSceneIndex, [30]],
					]
				},
			{
				sceneIndex: 20,
				sceneName: "Nicholas Drayton",
				character: ND_past_neutral, background: house_past,
				sceneText: "'Wake up then.  We haven't got all the time in the world.  Yet.'\nYou blearily open half an eyelid and percieve a frustrated sideways person.\nYou sit up.\nYou recognize the clothing as very old, and the wearer as a tall lanky teenager.  They remind you of your grad school cohort.  All knowledge and no sleep.\n'I am Nicholas.  You have stumbled upon something.  Or something has stumbled on you.  No one ever asks the leg of the table what a toe stubbing feels like.  Are you a table or a toe?'\n'A table?'\n'A toe?'\n'Wait, where am I!?'\nRun Away!",
				options: [
					["'A table?'", goToSceneIndex, [47]],
					["'A toe?'", goToSceneIndex, [1]],
					["'Wait, where am I!?'", goToSceneIndex, [30]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 21,
				sceneName: "Press 4",
				background: office_present,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "You head through the canteen on your way up to level 13 where your offices await you.  You're breakfast dulled the edge of hunger but you're still craving something.\nGrab a gooey cinnamon bun\nGrab a banana",
				options: [
					["Grab a gooey cinnamon bun", goToSceneIndex, [42]],
					["Grab a banana", goToSceneIndex, [8]],
					]
				},
			{
				sceneIndex: 22,
				sceneName: "'Can.. can you help me?",
				character: ND_past_smile, background: house_past,
				sceneText: "'Yes.'\nAnother moment passes.  For someone so impatient for you to make sense, your host is rather quiet.  They continue to rythmicly saw through some sort of metal contraption, yellowish dust collecting in a gentle pile under the flickering candles.\n'Please tell me what I'm supposed to do.'\nRun Away!",
				options: [
					["'Please tell me what I'm supposed to do.'", goToSceneIndex, [9]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 23,
				sceneName: "'Just tell me what the heck is going on!'",
				character: ND_past_neutral, background: house_past,
				sceneText: "The tinkering stops.  The tinkerer looks at you.\n'You're angry.'\n'Yes!'\n'Scared.'",
				options: [
					["'Yes!'", goToSceneIndex, [40]],
					["'Scared.'", goToSceneIndex, [36]],
					]
				},
			{
				sceneIndex: 24,
				sceneName: "Temporal Storm",
				background: spr_chaos, onLoad: {func: theEnd, params: ["tragic"]},
				sceneText: "Reality seems to fold in on itself around you.\nYou try to scream but no sound emerges. Your body feels simultaneously compressed and stretched, as if every cell is suddenly being pulled in every direction.\nThrough the haze of agony, you catch glimpsesâ€”London streets, your office, places you've never seenâ€”all superimposed like multiple exposures on a single photograph.\nWith terrible clarity, you realize you're being pulled apart across time itself.",
				options: [
					]
				},
			{
				sceneIndex: 25,
				sceneName: "'How can I help?'",
				sceneText: "'Oh I'm sure I have no idea!  But there are those who do.  Here.  Put these on so we don't get arrested for being uncomfortable to look at.'\nPut on a few layers of wool and follow William to information.\nRun Away!",
				options: [
					["Put on a few layers of wool and follow William to information.", goToSceneIndex, [17]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 26,
				sceneName: "Head to your offices",
				background: office_present, onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press 13",
				options: [
					["Press 13", goToSceneIndex, [56]],
					]
				},
			{
				sceneIndex: 27,
				sceneName: "Your alarm wakes you",
				background: house_present,
				sceneText: "You jolt into reality.  Falling asleep again was a bad idea.\nShake it off.\n'Have a day'",
				options: [
					["Shake it off.", goToSceneIndex, [32]],
					["'Have a day'", goToSceneIndex, [13]],
					]
				},
			{
				sceneIndex: 28,
				sceneName: "Take a cold shower, continued",
				background: house_present, onLoad:{func: find, params:["resolve"]},
				sceneText: "The ice in your veins meets the steely sting of the water.  You feel the adrenaline course its way into your limbs.  Your mind begins to wake up, shocked into resourcefulness by your masochistic routine.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [51]],
					]
				},
			{
				sceneIndex: 29,
				sceneName: "Check the notification details",
				background: office_present,
				inFriends:[["William", "Nichole", "Margaret"], "Gather your temporal allies"],
				sceneText: "The notification mentions a 'comprehensive systems diagnostic' scheduled for 3:00 PM today, focusing on the building's experimental energy management system.\nThe message is signed by the head of Research & Development, Dr. Brotin-Dawr.\nThe clock reads 2:30 PM.\nContact Dr. Brotin-Dawr immediately\nInvestigate the test location\n//inFriends should check if you're friends with everyone in the first array, and add the scene to options if they are.",
				options: [
					["Contact Dr. Brotin-Dawr immediately", goToSceneIndex, [60]],
					["Investigate the test location", goToSceneIndex, [16]],
					]
				},
			{
				sceneIndex: 30,
				sceneName: "'Wait, where am I!?'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'That's not the right question.  Don't ask extra questions.  Ask me why everything looks strange and there is no electricity, or why I'm working by candlelight.'\n'Wh..When? When are we?'\n'Wh... who are you?'\n'What is this place?'",
				options: [
					["'Wh..When? When are we?'", goToSceneIndex, [2]],
					["'Wh... who are you?'", goToSceneIndex, [54]],
					["'What is this place?'", goToSceneIndex, [41]],
					]
				},
			{
				sceneIndex: 31,
				sceneName: "Press B",
				background: office_present,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "The elevator dings down a few floors.  The muzak plays softly.  You pick a piece of lint from your sleeve.  All of existence is torn by the relentless eddies of a Temporal Storm",
				options: [
					["Temporal Storm", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 32,
				sceneName: "Shake it off.",
				background: house_present, onLoad:{func: playerTakeDamage, params: [10]},
				sceneText: "You shudder, focus all your mental energy, and just decide to move on.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [51]],
					]
				},
			{
				sceneIndex: 33,
				sceneName: "Take advantage of the extra... ugh... hour.",
				background: house_present,
				sceneText: "You groan, perhaps a bit dramatically, for no one's benefit.  You tumble your legs out of the bed, hoping peer pressure will rouse the rest of you.  Standing unsteadily, you blear your way to the bathroom, relieve yourself, and attempt to jump start your day.\nTake a hot shower\nTake a cold shower",
				options: [
					["Take a hot shower", goToSceneIndex, [48]],
					["Take a cold shower", goToSceneIndex, [35]],
					]
				},
			{
				sceneIndex: 34,
				sceneName: "Investigate the shiny object you notice out of the corner of your eye?",
				background: outside,
				sceneText: "You pause for a moment, happy for an excuse to put off the day's work.  You reach down for the scuffed metal object, notice it's a large brass key.  The antique object is worn to brushed shininess in two places.  The part where...  Is it suddenly really warm?  The part where it would be held, and the whatever, the the the thing the blade of the key is old timey and why is it hard to see and think of word for th wher\nPass out",
				options: [
					["Pass out", goToSceneIndex, [43]],
					]
				},
			{
				sceneIndex: 35,
				sceneName: "Take a cold shower",
				background: house_present, onLoad:{func: fight, params: ["coldDemons"]},
				sceneText: "Battle the your demons\nTake a cold shower, continued",
				options: [
					["Take a cold shower, continued", goToSceneIndex, [28]],
					]
				},
			{
				sceneIndex: 36,
				sceneName: "'Scared.'",
				sceneText: "'Mmmm, most mad people are scared.  It's helpful to notice the scared.  You can be scared something you don't know about is hurting you, or you can be mad that you hurt.  Similar, but one is easier to build off of.'\n'So is it both?'\n'Yes!' \nRun Away!",
				options: [
					["'Yes!'", goToSceneIndex, [40]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 37,
				sceneName: "Press R",
				background: outside,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "You press R on the elevator to get some air.  After a brief existential whirr, the doors open on the roof of the building.  You step out, gulp a few mouthfuls of air and steel your nerves for the day.  As you're about to turn back to the elevators, you notice something.  Do you  Investigate the shiny object you notice out of the corner of your eye?  or do you  Focus on getting to the days work.",
				options: [
					["Investigate the shiny object you notice out of the corner of your eye?", goToSceneIndex, [34]],
					["Focus on getting to the days work.", goToSceneIndex, [6]],
					]
				},
			{
				sceneIndex: 38,
				sceneName: "Untitled Passage",
				sceneText: "onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},\nonLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},",
				options: [
					]
				},
			{
				sceneIndex: 39,
				sceneName: "Ask questions",
				character: WB_past_smile, background: house_past,
				sceneText: "You ask your ersatz host five questions at the same time, but all that surfaces is a hoarsely muttered 'gruuhhhmuhhh.' --'Here, strange being.  You look parched.' --The owner of the smirking voice hands you a glass of water and you gulp it down with as much dignity as you can muster.  It's not much.\n'Where am I?'\n'Who are you?'",
				options: [
					["'Where am I?'", goToSceneIndex, [12]],
					["'Who are you?'", goToSceneIndex, [50]],
					]
				},
			{
				sceneIndex: 40,
				sceneName: "'Yes!'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'That's okay.  You can be mad.  You still have to help and hurt and live and love.  But you can be mad while you do it.  Sometimes that helps.'\nThey turn, take a small bag from the wall, open door to the stinging sunlight, and step out.\nFollow\nRun Away!",
				options: [
					["Follow", goToSceneIndex, [4]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 41,
				sceneName: "'What is this place?'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'That's not the right question.  Don't ask extra questions.  Ask me why everything looks strange and there is no electricity, or why I'm working by candlelight.'\n'Wh..When? When are we?'\n'Wh... who are you?'\n'Wait, where am I!?'",
				options: [
					["'Wh..When? When are we?'", goToSceneIndex, [2]],
					["'Wh... who are you?'", goToSceneIndex, [54]],
					["'Wait, where am I!?'", goToSceneIndex, [30]],
					]
				},
			{
				sceneIndex: 42,
				sceneName: "Grab a gooey cinnamon bun",
				background: office_present, 
				find:"cinnamonBun",
				sceneText: "This treat will hserve as external courage to face the day's work tasks.  You silently thank yourself for the private washroom in your new offices as you notice the small package smearing sugary deliciousness on your pinkie.  Stepping back into the empty elevator, you ... \nHead to the roof\nHead to your offices",
				options: [
					["Head to the roof", goToSceneIndex, [46]],
					["Head to your offices", goToSceneIndex, [26]],
					]
				},
			{
				sceneIndex: 43,
				sceneName: "Pass out",
				background: spr_background, find: "key",
				sceneText: "Your thoughts swirl half formed.  Maybe you hear shouting.  Maybe it's your mind trying to make sense of the rushing sound in your ears on the edge of intelligibility.  You think of faces half seen during your day.  The roar gets louder and you find yourself face to face with mischevious and adventurous William Redbrook,\nCareful and curious Nicholas Drayton, or\nEarnest and wise Margaret Ashford",
				options: [
					["William Redbrook", goToSceneIndex, [18]],
					["Nicholas Drayton", goToSceneIndex, [20]],
					["Margaret Ashford", goToSceneIndex, [7]],
					]
				},
			{
				sceneIndex: 44,
				sceneName: "Try to use the key to return",
				sceneText: "You focus on the key, willing yourself to return to some recognizable reality.\nSomething goes wrong.  Very wrong.\nYour friend screams in surprised anguish as each measurement of them is pulled into the future and/or past according to unknowable vortices.\nYou brace yourself in the Temporal Storm",
				options: [
					["Temporal Storm", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 45,
				sceneName: "'Why am I here?'",
				character: WB_past_neutral, background: house_past,
				sceneText: "William's expression sobers slightly. 'Why are you here? A rather large question asked by wise to wiser.'\nHe drums his fingers against his thigh, considering.  Suddenly, Elizabethan pretense drops.  'The boundaries that hold our story together.  They're not strong enough for... something...  We don't know what.  You're caught in the fracture.  Not falling, but being swept along, like an ant caught in the tiny folds of a twisted handkerchief.'\nHis eyes meet yours, warm but worried and serious. 'Something's coming. Something that will require people who can twist themselves free.'\nHe leans forward. 'The question isn't why you're here. It's what you can do.'\nAsk about the key\nAsk what you can do to help\nTry to use the key to return",
				options: [
					["Ask about the key", goToSceneIndex, [10]],
					["Ask what you can do to help", goToSceneIndex, [59]],
					["Try to use the key to return", goToSceneIndex, [44]],
					]
				},
			{
				sceneIndex: 46,
				sceneName: "Head to the roof",
				background: elevator_present,onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press R",
				options: [
					["Press R", goToSceneIndex, [37]],
					]
				},
			{
				sceneIndex: 47,
				sceneName: "'A table?'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'Sturdy but hard to motivate to do anything.  Understood.'\nYou stare wide eyed at your surroundings, assessing how safe you are.  This appears to be a workshop?  smithy?  Jewelry store?  Every surface has an crafting tool on it, or many in small piles stacked here or there.  There are no machines, but something whirs or hums in the background.\n\nAsk your precise host some questions\nRun Away!",
				options: [
					["Ask your precise host some questions", goToSceneIndex, [19]],
					["Run Away!", goToSceneIndex, [55]],
					]
				},
			{
				sceneIndex: 48,
				sceneName: "Take a hot shower",
				background: house_present, onLoad:{func: find, params:["resilience"]},
				sceneText: "You relax under the calming water, letting your anger at the world for existing melt like ice and flake off of you in layers.  Your jaw ucleanches.  You're not happy with today, but you're a little more ready for it.\nYou towel off and sit on the bed, relaxing for just a moment... stretching out feels... so nice...\nYour alarm wakes you",
				options: [
					["Your alarm wakes you", goToSceneIndex, [27]],
					]
				},
			{
				sceneIndex: 49,
				sceneName: "Fidget for a moment, putting off the tasks of the day",
				background: office_present,
				sceneText: "You arrange your desk, half convincing yourself you'll be more productive if everything is just so.  You haven't been productive in years.  So when the building shudders slightly, as though a truck was rumbling past your 13th story window, you notice immediately.  Maybe a quick phonecall down to ops to see if they want your in person input.  The phone rings twice before the building, and reality itself, fall apart in a Temporal Storm.",
				options: [
					["Temporal Storm", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 50,
				sceneName: "'Who are you?'",
				character: WB_past_neutral, background: house_past,
				sceneText: "'Forgive my boldness in ignoring your question... You seem to have wandered into my home, and what a curiosity hath struck me as I noticed your form owns a familiar echo to the beginnings of adventure.  Let us tarry not.  Don this costume and William Redbrook shall visit you upon my brothers.'\nRun Away! \n'Where am I?' \nPut on a few layers of wool and follow him to adventure",
				options: [
					["Run Away!", goToSceneIndex, [55]],
					["'Where am I?'", goToSceneIndex, [12]],
					["Put on a few layers of wool and follow him to adventure", goToSceneIndex, [57]],
					]
				},
			{
				sceneIndex: 51,
				sceneName: "Finish getting ready and eat some breakfast",
				background: house_present,
				sceneText: "You fuel your day, not really paying attention to your nourishment, just mindlessly consuming your morning's energy.  You gulp down a few good mouthfuls of bad coffee and head to work.",
				options: [
					["head to work.", goToSceneIndex, [53]],
					]
				},
			{
				sceneIndex: 52,
				sceneName: "Visit the canteen",
				background: elevator_present, onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press 4",
				options: [
					["Press 4", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 53,
				sceneName: "head to work.",
				background: office_present,
				sceneText: "Your lab is abuzz with activity.  Somber Doctors and Engineers nod their heads to you in deference as you traverse the labarynth of hallways to your new office.  Which floor was it on again?  You board the elevator and...\nHead to your offices\nVisit the canteen or \nHead to the roof",
				options: [
					["Head to your offices", goToSceneIndex, [26]],
					["Visit the canteen", goToSceneIndex, [52]],
					["Head to the roof", goToSceneIndex, [46]],
					]
				},
			{
				sceneIndex: 54,
				sceneName: "'Wh... who are you?'",
				character: ND_past_neutral, background: house_past,
				sceneText: "'That's not the right question.  Don't ask extra questions.  Ask me why everything looks strange and there is no electricity, or why I'm working by candlelight.'\n'Wh..When? When are we?'\n'What is this place?'\n'Wait, where am I!?'",
				options: [
					["'Wh..When? When are we?'", goToSceneIndex, [2]],
					["'What is this place?'", goToSceneIndex, [41]],
					["'Wait, where am I!?'", goToSceneIndex, [30]],
					]
				},
			{
				sceneIndex: 55,
				sceneName: "Run Away!",
				background: street_past, onLoad: {theEnd: ["sad"]},
				sceneText: "You dash, screaming with indignity, and find yourself in a busy street.  A horse attempts to avoid your sudden appearance, but swerving only serves to topple a carriage on top of you.  The horse is fine.  You, however...\nYou die as you lived.  Utterly accidentally.",
				options: [
					]
				},
			{
				sceneIndex: 56,
				sceneName: "Press 13",
				background: office_present,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "You press the button marked 13, and head to your personal offices.  Hoping to catch up on some paperwork, you continue through the offensive smell of carpet adhesive and sit behind your desk.\nImmediately get to work\nFidget for a moment, putting off the tasks of the day",
				options: [
					["Immediately get to work", goToSceneIndex, [14]],
					["Fidget for a moment, putting off the tasks of the day", goToSceneIndex, [49]],
					]
				},
			{
				sceneIndex: 57,
				sceneName: "Put on a few layers of wool and follow him to adventure",
				 background: street_past, onLoad: {theEnd: ["neutral"]},
				sceneText: "Your new ... friend? introduces himself as Redbrook, called William.  He brings you to a theater where you are introduced with much more dignity and ettiquete to a band of actors.  You find yourself put at ease, lulled by their strange accents into a relaxed state.  After their day's rehearsal for some new theatrical work of locally existential importance, your thoughts turn to returning ... somewhere?\nOver the years the past fades utterly.  You die painfully but quickly a few years after the love of your life.  A life obscured by time and forgotten by everything but decay.\nNot bad.",
				options: [
					]
				},
			{
				sceneIndex: 58,
				sceneName: "Run Away from the Office!",
				background: present_street, onLoad: {theEnd: ["sad"]},
				sceneText: "You dash, screaming with indignity, and find yourself in a busy street.  A pickup truck attempts to avoid your sudden appearance, but swerving only serves to topple the bed's contents on top of you at speed.  You are crushed by several bicycles, a snow shovel, two cinder blocks, and a broken down washing machine.  The truck is fine.  You, however...\nYou die as you lived.  Utterly accidentally.",
				options: [
					]
				},
			{
				sceneIndex: 59,
				sceneName: "Ask what you can do to help",
				character: WB_past_smile, background: house_past,
				sceneText: "William laughs, a bright sound in a strange world.\n'If we all knew the answer to such questions... What a world that would be.'\nHe gestures vaguely to everything.\n'There are bits and pieces of reality that are unstuck.  The respond more to need than anything else, but they are hard to come by and nearly impossible to recognize.'\nYou remember a shining object, distracting you when you wanted most to be distracted.\nAsk about the key",
				options: [
					["Ask about the key", goToSceneIndex, [10]],
					]
				},
			{
				sceneIndex: 60,
				sceneName: "Contact Dr. Brotin-Dawr immediately",
				sceneText: "You grab the phone and call your former colleague.  It seems somehow fitting that you should be the one to stop him from making a terrible mistake once again.  In grad school you were always saving him from himself.\nThese self congratulatory thoughts ripple through existence as you enter the Temporal Storm.",
				options: [
					["Temporal Storm", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 61,
				sceneName: "Go back to bed",
				background: house_present,
				sceneText: "You roll over, fold your pillow in half, hunker under your blanket, and try to recapture the magic of unconciousness.  Your fear begins to rise as you breathe slowly for an eternal five minutes, but you realize your thoughts are wandering.  You dream of a party you never attended.  Unfamiliar faces loom in and out of shadow, costumed waitstaff bringing drinks or food depending on when you look at them.  A celebra-- JANGLEJANGLEJANGLEDING.  JANGLEJANGLEJANGLEDING.\nYour alarm wakes you",
				options: [
					["Your alarm wakes you", goToSceneIndex, [27]],
					]
				},
		]
	}
}

