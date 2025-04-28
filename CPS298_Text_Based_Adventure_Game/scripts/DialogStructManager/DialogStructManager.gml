function DialogStructManager(){
	return {
		scenes:
		[

			{
				sceneIndex: 0, audio_play_sound_ext()
				sceneName: "The Beginning",
				background: bg_spr_background,
				sceneText: "...hm?\n...\n...",
				onLoad: {func: playSong , params: [snd_menuMusic1,0,true] },
				//requires: ["banana"],
				options: [
					["...", goToSceneIndex, [42]],
					]
				},
			{
				sceneIndex: 1,
				sceneName: "Daily.  You know, for the anti-oxidants.",
				sceneText: "'You are uncooperative, I see.  Well.  I hope we have better luck soon.  Whatever soon is these days.'",
				background: bg_house_past,
				character: MT_past_neutral,
				options: [
					["She shows you the door.", goToSceneIndex, [11]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 2,
				sceneName: "...home of a woman who knows...",
				sceneText: "...way more than I do...",
				background: bg_house_past,
				character: MT_past_neutral,
				options: [
					["...way more than I do...", goToSceneIndex, [39]],
					]
				},
			{
				sceneIndex: 3,
				sceneName: "I am ready.",
				sceneText: "'I know.  Just remember, opening can feel like breaking.'\nREDD steps back and Drait NIKI introduces themself, terse but not unfriendly:\n'Will you take responsibility for what you have to do?'",
				background: bg_house_past,
				character: WB_future_smile,
				options: [
					["I will", goToSceneIndex, [75]],
					["I... What?", goToSceneIndex, [13]],
					]
				},
			{
				sceneIndex: 4,
				sceneName: "Take the stairs",
				sceneText: "You... take the... stairs?  You're in an incredible hurry, so you breeze past the opening elevator doors to take... the stairs.  You make it a floor and a half before everyone (like Everyone everyone) dies in a",
				background: bg_office_present,
				onload:{func: audio_stop_all, params: []},
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 5,
				sceneName: "The long and winding spiral down",
				sceneText: "It was never going to have been enough.  This is the direction the world was fated toward, always.\nLet that be a comfort as time sorts and arranges your molecules by size.",
				background: bg_spr_black,
				onLoad: {func: theEnd , params: ["There is tragedy.  There is inevitability.  There is nothing for you here.  There will be no rewards.  There is no time.", SPEAKING_IN_TOUNGE]},
				options: [
				
					]
				},
			{
				sceneIndex: 6,
				sceneName: "Follow",
				character: ND_past_neutral,
				background: bg_house_past, 
				onLoad: {func: addFriend, params: ["Nicholas"]},
				sceneText: "'Also my name is Nicholas.  Please don't call me Nick, I don't like it..'",
				options: [
					["Let fate pull you along", goToSceneIndex, [56]],
					]
				},
			{
				sceneIndex: 7,
				sceneName: "Take the elevator",
				background: bg_office_present,
				onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press B",
				options: [
					["Press B", goToSceneIndex, [76]],
					]
				},
			{
				sceneIndex: 8,
				sceneName: "listen for  the echo of laughter",
				background: bg_house_past, 
				character: WB_past_smile, 
				onLoad: {func: addFriend, params: ["William"]},
				sceneText: "'And who are you?'\nA smirking voice opens your eyes, and you're faced with a stranger.\nThe smell of an unwashed world attacks your nostrils.\nYou look around and realize, not only is the person you're looking at a complete unknown,  but your very surroundings are unfamiliar. Is this some kind of film set? Wooden fixtures decorate a cozy, homey, --WAIT! what the heck is going on!",
				options: [
					["Ask questions", goToSceneIndex, [86]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 9,
				sceneName: "Ask about the key",
				character: WB_past_neutral, background: bg_house_past,
				sceneText: "'Ah, the key!' William brightens and snags it from your hand with nimble fingers before you can protest. 'One of many such objects that bend certain rules.'\nHe flips it casually, catching it while looking you dead in the eye. 'Found it, did you? Or perhaps it found you.'\nHe returns it with unexpected gentleness. 'These appear to those at crossroads. Those weary souls whose choices matter more than most.'",
				options: [
					["Try to use the key to return", goToSceneIndex, [90]],
					["'How can I help?'", goToSceneIndex, [24]],
					]
				},
			{
				sceneIndex: 10,
				sceneName: "A slight headache.",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "Margaret, with no pen or paper, holds herself and holds your gaze in a way that somehow reassures you she'll remember every word you tell her and more.\nShe hands you a wooden cup of water from a nearby pitcher and continues her... interview?\n'Anything else out of the ordinary.'",
				options: [
					["ha. ha.", goToSceneIndex, [66]],
					["No.", goToSceneIndex, [41]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 11,
				sceneName: "She shows you the door.",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "As you're moved toward the door, the primary panic of being faced with the unknown floods your system and you begin to beg wildly for another chance.  You claim that you'll tell her anything.  She merely shakes her head, tight lipped, and sends your toward the cobbled and feces strewn streets outside.",
				options: [
					["Leave calmly", goToSceneIndex, [72]],
					["Struggle", goToSceneIndex, [63]],
					]
				},
			{
				sceneIndex: 12,
				sceneName: "'Where am I?'",
				character: WB_past_smile, background: bg_house_past,
				sceneText: "'You sit 'pon the floor, stranger.  The floor of a modest home in Southwark.  Southwark being a dot on a map of England.  England being a nation in the temporal world, and the temporal world being a location you must yourself interpret the nature of.  I find your accent unplaceable, and I, being a listener by virtue and trade, am implaccable when it comes to the unexpected and the new.  Of which you number both.  I am Redbrook, called William.  Enrobe thyself and I shall impose you upon my brothers, who shall upbraid me for being untimely anon.'",
				options: [
					["Run Away!", goToSceneIndex, [100]],
					["'Who are you?'", goToSceneIndex, [44]],
					["'Why am I here?'", goToSceneIndex, [91]],
					["Put on a few layers of wool and follow him to adventure", goToSceneIndex, [102]],
					]
				},
			{
				sceneIndex: 13,
				sceneName: "I... What?",
				background: bg_spr_black,
				sceneText: "They shudder, and the world folds in half everywhere.  Your confusion is no match for the winds of unwinding time.",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 14,
				sceneName: "Welcome to the future",
				background: bg_spr_future,
				character: WB_future_smile,
				sceneText: "A young man steps toward you, giggling slightly, and presents himself as Will REDD, an echo here at the end of existence to your friend William Redbrook.\n'Are you ready to open what must be opened?'",
				options: [
					["I am ready.", goToSceneIndex, [3]],
					["I... What?", goToSceneIndex, [13]],
					]
				},
			{
				sceneIndex: 15,
				sceneName: "It's too early.",
				background: bg_house_present, 
				sceneText: "It's too early. It's dark and it's quiet and it's warm but it's too early. Your muffled thoughts slowly resolve themselves into enough clarity to question how long you have left... before your alarm.\nToo long.\nIt's too early.",
				options: [
					["Go back to bed", goToSceneIndex, [104]],
					["Take advantage of the extra... ugh... hour.", goToSceneIndex, [77]],
					]
				},
			{
				sceneIndex: 16,
				sceneName: "Investigate the test location",
				background: bg_office_present,
				sceneText: "You scurry down to the lab, expecting to find the worst.  You hope there's time.",
				options: [
					["Take the elevator", goToSceneIndex, [7]],
					["Take the stairs", goToSceneIndex, [4]],
					]
				},
			{
				sceneIndex: 17,
				sceneName: "Put on a few layers of wool and follow William to information.",
				sceneText: "",
				background: bg_street_past,
				options: [
					["Let fate pull you along", goToSceneIndex, [56]],
					]
				},
			{
				sceneIndex: 18,
				sceneName: "Get back to work.",
				background: bg_office_present,
				onLoad:{func: playSong , params: [snd_menuMusic1,0,true] },
				sceneText: "You shake in your chair with a start.  Time travel feels an awful lot like a dream.  But there's the key on your desk in front of you.  Slightly embedded, actually.  As though key and desk had fought for the same spacial coordinates and compromised.  It sticks slightly, but pulls free.  The desk is terribly damaged, but the key itself is only slightly discolored.  Your computer blinks with an unanswered notification.  The window shows a sunny day, cloudless day, though somehow more dim than usual.",
				options: [
					["Check the notification details", goToSceneIndex, [74]],
					["Focus on getting to the days work.", goToSceneIndex, [57]],
					["Run Away from the Office!", goToSceneIndex, [103]],
					]
				},
			{
				sceneIndex: 19,
				sceneName: "Press 4",
				background: bg_office_present,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "You head through the canteen on your way up to level 13 where your offices await you.  You're breakfast dulled the edge of hunger but you're still craving something.",
				options: [
					["Grab a gooey cinnamon bun", goToSceneIndex, [88]],
					["Grab a banana", goToSceneIndex, [61]],
					]
				},
			{
				sceneIndex: 20,
				background: bg_house_past,
				sceneName: "...by a magical key and sent to the ...",
				sceneText: "...home of a woman who knows...",
				options: [
					["...home of a woman who knows...", goToSceneIndex, [2]],
					]
				},
			{
				sceneIndex: 21,
				background: bg_elevator_present,
				sceneName: "Bring the key to the roof",
				sceneText: "you press R",
				options: [
					["you press R", goToSceneIndex, [81]],
					]
				},
			{
				sceneIndex: 22,
				sceneName: "'Just tell me what the heck is going on!'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "The tinkering stops.  The tinkerer looks at you.\n'You're angry.'\n'Yes!'\n'Scared.'",
				options: [
					["'Yes!'", goToSceneIndex, [34]],
					["'Scared.'", goToSceneIndex, [80]],
					]
				},
			{
				sceneIndex: 23,
				sceneName: "Temporal Storm",
				background: bg_spr_chaos,
				onLoad: {func: theEnd, params: ["There's nothing left to mourn.", Sky_falling]},
				sceneText: "Reality seems to fold in on itself around you.\nYou try to scream but no sound emerges. Your body feels simultaneously compressed and stretched, as if every cell is suddenly being pulled in every direction.\nThrough the haze of agony, you catch glimpses... London streets, your office, places you've never seen... all superimposed like multiple exposures on a single photograph.\nWith terrible clarity, you realize you're being pulled apart across time itself.",
				options: [
					]
				},
			{
				sceneIndex: 24,
				sceneName: "'How can I help?'",
				background: bg_house_past,
				sceneText: "'Oh I'm sure I have no idea!  But there are those who do.  Here.  Put these on so we don't get arrested for being uncomfortable to look at.",
				options: [
					["Put on a few layers of wool and follow William to information.", goToSceneIndex, [17]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 25,
				sceneName: "Head to your offices",
				background: bg_office_present, onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press 13",
				options: [
					["Press 13", goToSceneIndex, [101]],
					]
				},
			{
				sceneIndex: 26,
				sceneName: "Your alarm wakes you",
				background: bg_house_present,
				sceneText: "You jolt into reality.  Falling asleep again was a bad idea.",
				options: [
					["Shake it off.", goToSceneIndex, [31]],
					["'Have a day'", goToSceneIndex, [65]],
					]
				},
			{
				sceneIndex: 27,
				background: bg_house_past,
				sceneName: "...Well, I seem to have been captured...",
				sceneText: "...by a magical key and sent to the ...",
				options: [
					["...by a magical key and sent to the ...", goToSceneIndex, [20]],
					]
				},
			{
				sceneIndex: 28,
				sceneName: "stop him.'",
				background: bg_spr_chaos,
				sceneText: "The end of everything is swallowed up, but you see each of your friends 'turn' and feel a push from an unknown and unknowable direction.  You blink hard, fight disorientation, and face Dr. Brotin-Dawr, your old school chum.  He looks at you, and immediately drops all deception.  Like an origami flower being undone, he unflexes in a handful of unseeable dimension, and becomes a writhing mass of tentacles and evil.\nAnd you fight the last battle anyone ever could.",
				onLoad: {func: playSong , params: [am_i_coming_bacK ,0,true] },
				options: [
					["here if you win", goToSceneIndex, [38]],
					["here if you lose", goToSceneIndex, [5]],
					]
				},
			{
				sceneIndex: 29,
				sceneName: "'Wait, where am I!?'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'That's not the right question.  Don't ask extra questions.  Ask me why everything looks strange and there is no electricity, or why I'm working by candlelight.",
				options: [
					["'Wh..When? When are we?'", goToSceneIndex, [54]],
					["'Wh... who are you?'", goToSceneIndex, [46]],
					["'What is this place?'", goToSceneIndex, [35]],
					]
				},
			{
				sceneIndex: 30,
				sceneName: "I'm allergic to flowers and I take a multivitamin.",
				sceneText: "'I see.  Anything else you think I should know?",
				character: MT_past_neutral, background: bg_house_past,
				options: [
					["Are you a doctor?", goToSceneIndex, [55]],
					["A slight headache.", goToSceneIndex, [10]],
					["No.", goToSceneIndex, [41]],
					]
				},
			{
				sceneIndex: 31,
				sceneName: "Shake it off.",
				background: bg_house_present, 
				onLoad:{func: playerTakeDamage, params: [(10)]},
				sceneText: "You shudder, focus all your mental energy, and just decide to move on.",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [97]],
					]
				},
			{
				sceneIndex: 32,
				sceneName: "Take a cold shower",
				background: bg_house_present, onLoad:{func: fight, params: "coldDemons"},
				sceneText: "Battle the your demons.",
				options: [
					["Take a cold shower, continued", goToSceneIndex, [73]],
					]
				},
			{
				sceneIndex: 33,
				sceneName: "Duck into a large building",
				background: bg_theater_past,
				sceneText: "You pop into a larger building hoping for a place to hide, and find yourself in some sort of arena.  No, a raised platform shows you to be hiding out in a theater of some size.  Ah.  And the costumed actors have paused and are watching what you'll do next.",
				requires: ["banana", "cinnamon roll"],
				options: [
					["offer the banana", goToSceneIndex, [87]],
					["offer the cinnamon roll", goToSceneIndex, [71]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 34,
				sceneName: "'Yes!'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'That's okay.  You can be mad.  You still have to help and hurt and live and love.  But you can be mad while you do it.  Sometimes that helps.'\nThey turn, take a small bag from the wall, open the door to the stinging sunlight, and step out.",
				options: [
				
					["Follow", goToSceneIndex, [6]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 35,
				sceneName: "'What is this place?'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'That's not the right question.  Don't ask extra questions.  Ask me why everything looks strange and there is no electricity, or why I'm working by candlelight.'\n'Wh..When? When are we?'\n'Wh... who are you?'\n'Wait, where am I!?'",
				options: [
					["'Wh..When? When are we?'", goToSceneIndex, [54]],
					["'Wh... who are you?'", goToSceneIndex, [46]],
					["'Wait, where am I!?'", goToSceneIndex, [29]],
					]
				},
			{
				sceneIndex: 36,
				background: bg_theater_past,
				sceneName: "Freeze",
				sceneText: "Until at once they laugh and tell you how terrified you looked and roast your inability to take a joke.  They invite you to stay and rest your feet as long as you can withstand their clamorous din.\nMeet the Dramatis Personea",
				options: [
					["Meet the Dramatis Personea", goToSceneIndex, [83]],
					]
				},
			{
				sceneIndex: 37,
				sceneName: "Gather your temporal allies",
				background: bg_office_present,
				sceneText: "You realize now what you were always meant to do.  There are things beyond our understanding that we always reach for.  A child pulling at ice cream with their mind.  A fervent prayer for the health of loved one delerious with fever.  Even a futile attempt to stretch out some mysterious muscle.  We always want to effect the world in ways we know aren't tied down to reality.\nBring the key to the roof",
				options: [
					["Bring the key to the roof", goToSceneIndex, [21]],
					]
				},
			{
				sceneIndex: 38,
				sceneName: "here if you win",
				background: bg_spr_chaos,
				sceneText: "You float, strong, so strong now, but unable to effect anything.  With no wall to push off of, with nothing to grab on to, you have no way of pulling yourself back into reality.  And so you float.  Your body wastes away.  The small eddies and vortices of time ripple through you as they find realignment, aging and delaying you to a suffering death.  But you saved everyone else.  You saved everyone and everything else.  Right?  Defeating the monster was enough, right?  One monster?  Was enough?\nYou die, hoping, in agony.",
				onLoad: {func: theEnd, params: [snd_MENU_SONG__3, "Hope is a special kind of pain."]},
				options: [
					]
				},
			{
				sceneIndex: 39,
				sceneName: "...way more than I do...",
				character: MT_past_neutral,
				background: bg_house_past,
				sceneText: "'Hmm.' She seems to come to a conclusion you couldn't hope to understand. 'I suppose you're right.  Come along then, we have a few people to meet, and you seem cooperative enough considering your situation.\nTrust Margaret\nRun Away!",
				options: [
					["Trust Margaret", goToSceneIndex, [78]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 40,
				sceneName: "'There was a weird brass ke... Wait!  Who are you!?",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "'Ah yes, one of Nicholas's nets.  I'm sorry it found you.  Well, I'm sorry you're the sort of person that thing was likely to find.  I'm called Margaret by those who deserve to address me at all.  You are a stranger, stranger than most, in a strange land, stranger than most, so I suggest you stay curious while I find out our next steps.  Now tell me.  Anything else out of the ordinary for you today?'\nWell, the random little demons...\nWell, I dreamt about an island last night...\n...Well, I seem to have been captured... \nRun Away!",
				options: [
					["Well, the random little demons...", goToSceneIndex, [68]],
					["Well, I dreamt about an island last night...", goToSceneIndex, [59]],
					["...Well, I seem to have been captured...", goToSceneIndex, [27]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 41,
				sceneName: "No.",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "She considers for a moment.  You feel yourself blanche as she tells you 'No. I don't think this time.  You may go.'\nShe shows you the door.",
				options: [
					["She shows you the door.", goToSceneIndex, [11]],
					]
				},
			{
				sceneIndex: 42,
				sceneName: "...",
				background: bg_spr_black,
				sceneText: "The palm trees abruptly dim.\nIt's too early.",
				options: [
					["It's too early.", goToSceneIndex, [15]],
					]
				},
			{
				sceneIndex: 43,
				sceneName: "Take a hot shower",
				background: bg_house_present, onLoad:{func: find, params:["resilience"]},
				sceneText: "You relax under the calming water, letting your anger at the world for existing melt like ice and flake off of you in layers.  Your jaw ucleanches.  You're not happy with today, but you're a little more ready for it.\nYou towel off and sit on the bed, relaxing for just a moment... stretching out feels... so nice...\nYour alarm wakes you",
				options: [
					["Your alarm wakes you", goToSceneIndex, [26]],
					]
				},
			{
				sceneIndex: 44,
				sceneName: "'Who are you?'",
				character: WB_past_neutral, background: bg_house_past,
				sceneText: "'Forgive my boldness in ignoring your question... You seem to have wandered into my home, and what a curiosity hath struck me as I noticed your form owns a familiar echo to the beginnings of adventure.  Let us tarry not.  Don this costume and William Redbrook shall visit you upon my brothers.'\nRun Away! \n'Where am I?' \nPut on a few layers of wool and follow him to adventure",
				options: [
					["Run Away!", goToSceneIndex, [100]],
					["'Where am I?'", goToSceneIndex, [12]],
					["Put on a few layers of wool and follow him to adventure", goToSceneIndex, [102]],
					]
				},
			{
				sceneIndex: 45,
				background: bg_house_past,
				character: MT_past_neutral,
				sceneName: "I sneeze uncontrollably when jazz music plays, and I take powdered mandrake root.",
				sceneText: "She glares.\nDaily.  You know, for the anti-oxidants.",
				options: [
					["Daily.  You know, for the anti-oxidants.", goToSceneIndex, [1]],
					]
				},
			{
				sceneIndex: 46,
				sceneName: "'Wh... who are you?'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'That's not the right question.  Don't ask extra questions.  Ask me why everything looks strange and there is no electricity, or why I'm working by candlelight.'\n'Wh..When? When are we?'\n'What is this place?'\n'Wait, where am I!?'",
				options: [
					["'Wh..When? When are we?'", goToSceneIndex, [54]],
					["'What is this place?'", goToSceneIndex, [35]],
					["'Wait, where am I!?'", goToSceneIndex, [29]],
					]
				},
			{
				sceneIndex: 47,
				background: bg_house_past,
				character: MT_past_smile,
				sceneName: "Actually, I feel better than I have in years.",
				sceneText: "She laughs, and it only just manages to reach her eyes.  You assess this person:  She seems intelligent.  She seems self possessed.  Above all, she has an assured sense of calm confidence surrounding her.  Though not bulging with muscle or regailing you with various sesquipedalia, you perceive that she is smart, and strong, and quite dangerous.\n'Glad to hear. The net can sometimes jolt its passenger.  You seem to have a knack for travel by mystery.  Any allergies?  Do you take anything daily?\nNo.\nI'm allergic to flowers and I take a multivitamin.\nI sneeze uncontrollably when jazz music plays, and I take powdered mandrake root.",
				options: [
					["No.", goToSceneIndex, [41]],
					["I'm allergic to flowers and I take a multivitamin.", goToSceneIndex, [30]],
					["I sneeze uncontrollably when jazz music plays, and I take powdered mandrake root.", goToSceneIndex, [45]],
					]
				},
			{
				sceneIndex: 48,
				sceneName: "Ask what you can do to help",
				character: WB_past_smile, background: bg_house_past,
				sceneText: "William laughs, a bright sound in a strange world.\n'If we all knew the answer to such questions... What a world that would be.'\nHe gestures vaguely to everything.\n'There are bits and pieces of reality that are unstuck.  The respond more to need than anything else, but they are hard to come by and nearly impossible to recognize.'\nYou remember a shining object, distracting you when you wanted most to be distracted.\nAsk about the key",
				options: [
					["Ask about the key", goToSceneIndex, [9]],
					]
				},
			{
				sceneIndex: 49,
				sceneName: "Die alone in a cell",
				background: bg_spr_black, onLoad: {func: theEnd, params: ["sad"]},
				sceneText: "The rank insanitation of 1600s city life, amplified by the dank and sunless gaol you are kept in, makes quick work of your immune system, and you die before they figure out how they want to kill you.  Small victories are still victories.",
				options: [
					]
				},
			{
				sceneIndex: 50,
				background: bg_office_present,
				sceneName: "Contact Dr. Brotin-Dawr immediately",
				sceneText: "You grab the phone and call your former colleague.  It seems somehow fitting that you should be the one to stop him from making a terrible mistake once again.  In grad school you were always saving him from himself.\nThese self congratulatory thoughts ripple through existence as you enter the Temporal Storm.",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 51,
				sceneName: "follow intelligent eyes",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "'What is it now?!'\nYou hear someone bounding down a very old, no, very new? hmm.  a staircase.\nYou open your eyes to behold the form of a dsiquietingly familiar stranger.  They look you up and down... Well, they look your supine form left and right, and begin to ask you questions for the rest of your time together.\n'What is the last thing you remember?'\n'There was a weird brass ke... Wait!  Who are you!?\nRun Away!",
				options: [
					["'There was a weird brass ke... Wait!  Who are you!?", goToSceneIndex, [40]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 52,
				sceneName: "Immediately get to work",
				background: bg_office_present,
				sceneText: "You open your email and sigh deeply.  You used to be an inspired researcher.  Now you're just the top of a beuraucratic heap.  Highest view from a mountain of dirt.  You connect people who need to connect.  You give your vision of what direction the organization should take.\nYou nearly sigh with relief when you're suddenly torn apart by an afternoon Temporal Storm.",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 53,
				sceneName: "Of course",
				character: ND_past_neutral,
				background: bg_house_past,
				sceneText: "Her eyes grow sad and she steps back.\n'Confidence unearned is a hole in the universe.'\nThe device drops from her hands as you're taken by the\nTemporal Storm",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 54,
				sceneName: "'Wh..When? When are we?'",
				character: ND_past_smile, background: bg_house_past,
				sceneText: "'OH!  excellently seen and important.  You're in the mid 1600s and since that's before you were born, you must have time travelled.'\nYou both wait in silence for a moment.  Rancifying oils on brass and bronze seep into your nostrils.  A small high pitched bell rings.  And rings again.\n'Can.. can you help me?",
				options: [
					["'Can.. can you help me?", goToSceneIndex, [70]],
					]
				},
			{
				sceneIndex: 55,
				sceneName: "Are you a doctor?",
				character: MT_past_neutral,
				background: bg_house_past,
				sceneText: "'Yes.  Among other things.  Now please join me, won't you?  We will link you with those who can help you move along your way.'",
				options: [
					]
				},
			{
				sceneIndex: 56,
				sceneName: "Let fate pull you along",
				background: bg_street_past,
				character: WB_past_neutral,
				onLoad: {func: playSong , params: [where_she_at,0,true] },
				sceneText: "Your host brings you through the labyrinthine streets until you are quite confused.  It has been a long day and you are quite tired. finally, they bring you to a door that makes your eyes sting a little when you look directly at it.\nEnter the strange door",
				options: [
					["Enter the strange door", goToSceneIndex, [94]],
					]
				},
			{
				sceneIndex: 57,
				sceneName: "Focus on getting to the days work.",
				background: bg_elevator_present,onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press 13",
				options: [
					["Press 13", goToSceneIndex, [101]],
					]
				},
			{
				sceneIndex: 58,
				sceneName: "A bizarre sense of deja vu.",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "'Hmmm.  Yes.  Now that you mention it...  Oh dear.'\nTemporal Storm",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 59,
				sceneName: "Well, I dreamt about an island last night...",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "'Hm.  That is to be expected.  What else?'\n...Well, I seem to have been captured... \nNo.\nA slight headache.\nA bizarre sense of deja vu.",
				options: [
					["...Well, I seem to have been captured...", goToSceneIndex, [27]],
					["No.", goToSceneIndex, [41]],
					["A slight headache.", goToSceneIndex, [10]],
					["A bizarre sense of deja vu.", goToSceneIndex, [58]],
					]
				},
			{
				sceneIndex: 60,
				sceneName: "None that I can think of.",
				character: MT_past_smile, background: bg_house_past,
				sceneText: "'mhmm.  Any physical symptoms?  ringing ears, vision problems, headache, strange sense of deja vu?'\nha. ha.",
				options: [
					["ha. ha.", goToSceneIndex, [66]],
					]
				},
			{
				sceneIndex: 61,
				sceneName: "Grab a banana",
				background: bg_office_present,  
				find: "banana",
				sceneText: "This will bring a longing no food could fill closer to comfort.  You make a mental note to wrap the banana's peel in newspaper before throwing it out.  Your keen nose will be distracted all day if you don't. Take your banana back to the elevator and ...\nPress R\nPress 13",
				options: [
					["Press R", goToSceneIndex, [82]],
					["Press 13", goToSceneIndex, [101]],
					]
				},
			{
				sceneIndex: 62,
				sceneName: "'Please tell me what I'm supposed to do.'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'You are supposed to come here, now, moved by the weaving of unseeing uncaring hands.  You are supposed to bring a device back to me...  It is very hard to explain these things.  I make.  I don't explain.  I just make things from things and the things do things, and most people suffer a little and love a lot and that's okay and...'\n'I'm sorry.  It sounds like this is difficult for you.  Please.  I just want to make things good.'\n'Just tell me what the heck is going on!'",
				options: [
					["'I'm sorry.  It sounds like this is difficult for you.  Please.  I just want to make things good.'", goToSceneIndex, [64]],
					["'Just tell me what the heck is going on!'", goToSceneIndex, [22]],
					]
				},
			{
				sceneIndex: 63,
				sceneName: "Struggle",
				background: bg_street_past, onLoad: {func: theEnd, params: ["sad"]},
				sceneText: "You attempt to use physical force, and fail. Screaming with indignity, you find yourself in a busy street.  A horse attempts to avoid your sudden appearance, but swerving only serves to topple a carriage on top of you.  The horse is fine.  You, however...\nYou die as you lived.  Utterly accidentally.",
				options: [
					]
				},
			{
				sceneIndex: 64,
				sceneName: "'I'm sorry.  It sounds like this is difficult for you.  Please.  I just want to make things good.'",
				character: ND_past_smile, background: bg_house_past,
				sceneText: "This gets you brief but scouring eye contact.  Your host cracks a small smile.\n'I'll help you more than make things good.  Together let's make good things.  Follow me please.'\nFollow",
				options: [
					["Follow", goToSceneIndex, [6]],
					]
				},
			{
				sceneIndex: 65,
				sceneName: "'Have a day'",
				background: bg_house_present, onLoad:{func: find, params: "a day"},
				sceneText: "Alright.  Morning: tough.  Side of the bed: Wrong.  Day:  Having a.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [97]],
					]
				},
			{
				sceneIndex: 66,
				sceneName: "ha. ha.",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "'Yes.  I suppose you're right.  Well.  I have all the information I need.  Shall we?'\nTrust Margaret \nNo.",
				options: [
					["Trust Margaret", goToSceneIndex, [78]],
					["No.", goToSceneIndex, [41]],
					]
				},
			{
				sceneIndex: 67,
				sceneName: "'A toe?'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'Toes are useful.  But toes are soft.  They need protecting to be of much use at all.  Understood.'\nYou stare wide eyed at your surroundings, assessing how safe you are.  This appears to be a workshop?  smithy?  Jewelry store?  Every surface has an crafting tool on it, or many in small piles stacked here or there.  There are no machines, but something whirs or hums in the background.\n\nAsk your precise host some questions\nRun Away!",
				options: [
					["Ask your precise host some questions", goToSceneIndex, [69]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 68,
				sceneName: "Well, the random little demons...",
				character: MT_past_neutral, background: bg_house_past,
				sceneText: "'Oh yes.  They slip out.  Like sentient drops of dirty water as the rag is squeezed.  Any physical symptoms?  ringing ears, vision problems, headache, strange sense of deja vu?'\nNone that I can think of.\nA slight headache.\nActually, I feel better than I have in years.",
				options: [
					["None that I can think of.", goToSceneIndex, [60]],
					["A slight headache.", goToSceneIndex, [10]],
					["Actually, I feel better than I have in years.", goToSceneIndex, [47]],
					]
				},
			{
				sceneIndex: 69,
				sceneName: "Ask your precise host some questions",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'Wh... who are you?'\n'What is this place?'\n'Wait, where am I!?'",
				options: [
					["'Wh... who are you?'", goToSceneIndex, [46]],
					["'What is this place?'", goToSceneIndex, [35]],
					["'Wait, where am I!?'", goToSceneIndex, [29]],
					]
				},
			{
				sceneIndex: 70,
				sceneName: "'Can.. can you help me?",
				character: ND_past_smile, background: bg_house_past,
				sceneText: "'Yes.'\nAnother moment passes.  For someone so impatient for you to make sense, your host is rather quiet.  They continue to rythmicly saw through some sort of metal contraption, yellowish dust collecting in a gentle pile under the flickering candles.\n'Please tell me what I'm supposed to do.'\nRun Away!",
				options: [
					["'Please tell me what I'm supposed to do.'", goToSceneIndex, [62]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 71,
				background: bg_theater_past,
				sceneName: "offer the cinnamon roll",
				sceneText: "The gooey confection and its processed sugar are a treat so rare in this world the group audibly considers accusing you of witchcraft.  They fall silent and stare at you for a moment...\nFreeze\nRun Away!",
				options: [
					["Freeze", goToSceneIndex, [36]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 72,
				background: bg_street_past,
				sceneName: "Leave calmly",
				sceneText: "You gather what little dignity you have left, and exit the home of Margaret Ashford as gracefully as you can.  You are immediately arrested for, well: 'Just look at ye!' utters the constable as they grab you.\nDie alone in a cell\nRun Away!\n\noffer a cinnamon roll\noffer a banana",
				options: [
					["Die alone in a cell", goToSceneIndex, [49]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 73,
				sceneName: "Take a cold shower, continued",
				background: bg_house_present, onLoad:{func: find, params:["resolve"]},
				sceneText: "The ice in your veins meets the steely sting of the water.  You feel the adrenaline course its way into your limbs.  Your mind begins to wake up, shocked into resourcefulness by your masochistic routine.\nFinish getting ready and eat some breakfast",
				options: [
					["Finish getting ready and eat some breakfast", goToSceneIndex, [97]],
					]
				},
			{
				sceneIndex: 74,
				sceneName: "Check the notification details",
				background: bg_office_present, 
				inFriends:[["William", "Nichole", "Margaret"], [37]],
				sceneText: "The notification mentions a 'comprehensive systems diagnostic' scheduled for 3:00 PM today, focusing on the building's experimental energy management system.\nThe message is signed by the head of Research & Development, Dr. Brotin-Dawr.\nThe clock reads 2:30 PM.\nContact Dr. Brotin-Dawr immediately\nInvestigate the test location\n//inFriends should check if you're friends with everyone in the first array, and add the scene to options if they are.",
				options: [
					["Contact Dr. Brotin-Dawr immediately", goToSceneIndex, [50]],
					["Investigate the test location", goToSceneIndex, [16]],
					]
				},
			{
				sceneIndex: 75,
				sceneName: "I will",
				background: bg_spr_future,
				character: spr_all_three,
				sceneText: "NIKI steps back satisfied, and M.A.Sh.T steps forward, holding a small device.\n'And will you remember all this when the world is crumpling, loud like tin, all around you?'",
				options: [
					["Of course", goToSceneIndex, [53]],
					["Think it over before answering", goToSceneIndex, [95]],
					]
				},
			{
				sceneIndex: 76,
				sceneName: "Press B",
				background: bg_office_present,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "The elevator dings down a few floors.  The muzak plays softly.  You pick a piece of lint from your sleeve.  All of existence is torn by the relentless eddies of a Temporal Storm",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 77,
				sceneName: "Take advantage of the extra... ugh... hour.",
				background: bg_house_present,
				sceneText: "You groan, perhaps a bit dramatically, for no one's benefit.  You tumble your legs out of the bed, hoping peer pressure will rouse the rest of you.  Standing unsteadily, you blear your way to the bathroom, relieve yourself, and attempt to jump start your day.\nTake a hot shower\nTake a cold shower",
				options: [
					["Take a hot shower", goToSceneIndex, [43]],
					["Take a cold shower", goToSceneIndex, [32]],
					]
				},
			{
				sceneIndex: 78,
				sceneName: "Trust Margaret",
				character: MT_past_neutral,
				background: bg_house_past,
				onLoad: {func: addFriend, params: ["Margaret"]},
				sceneText: "'I know this seems callous and cruel of me, but I have worked toward this point for a long time.  I do appreciate the situation you find yourself in.  Putting your fate in the hands of strangers is never easy.  Nor fun.  But I hope I can reassure you that, perhaps only this once, it is wise.'  She smiles reassuringly, and you realize there is warmth behind her business-like tone.  She cares.\nLet fate pull you along",
				options: [
					["Let fate pull you along", goToSceneIndex, [56]],
					]
				},
			{
				sceneIndex: 79,
				sceneName: "Investigate the shiny object you notice out of the corner of your eye?",
				background: bg_outside,
				sceneText: "You pause for a moment, happy for an excuse to put off the day's work.  You reach down for the scuffed metal object, notice it's a large brass key.  The antique object is worn to brushed shininess in two places.  The part where...  Is it suddenly really warm?  The part where it would be held, and the whatever, the the the thing the blade of the key is old timey and why is it hard to see and think of word for th wher\nPass out",
				options: [
					["Pass out", goToSceneIndex, [89]],
					]
				},
			{
				sceneIndex: 80,
				sceneName: "'Scared.'",
				character: ND_past_smile,
				sceneText: "'Mmmm, most mad people are scared.  It's helpful to notice the scared.  You can be scared something you don't know about is hurting you, or you can be mad that you're in pain.  Similar, but one is easier to build off of.  So is it both?'\n'Yes!' \nRun Away!",
				options: [
					["'Yes!'", goToSceneIndex, [34]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 81,
				sceneName: "you press R",
				background: bg_outside,
				onLoad: {func: playSong ,params:[call_me_when_you_need_it , 0, true]},
				sceneText: "The doors open up and you walk out, heading straight to where the brass device waits on the ground.  You lock them together in a way that seems obvious now.  Once you make your cyclic device, you focus, and push it...  Not up. Not down.  Not left or right, or forward or backward.  You push it in a direction somehow at a right angle to reality, and your surroundings slide at right angles to every direction.  You then pull opposite to your first push, and confidently break the connection.\nYou nod at each of the strangers before you, placing each one mentally in place of your newly made friends.\nWelcome to the future",
				options: [
					["Welcome to the future", goToSceneIndex, [14]],
					]
				},
			{
				sceneIndex: 82,
				sceneName: "Press R",
				background: bg_outside,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "You press R on the elevator to get some air.  After a brief existential whirr, the doors open on the roof of the building.  You step out, gulp a few mouthfuls of air and steel your nerves for the day.  As you're about to turn back to the elevators, you notice something.  Do you  Investigate the shiny object you notice out of the corner of your eye?  or do you  Focus on getting to the days work.",
				options: [
					["Investigate the shiny object you notice out of the corner of your eye?", goToSceneIndex, [79]],
					["Focus on getting to the days work.", goToSceneIndex, [57]],
					]
				},
			{
				sceneIndex: 83,
				sceneName: "Meet the Dramatis Personea",
				 background: bg_theater_past, onLoad: {func : theEnd, params:["neutral"]},
				sceneText: "You find yourself put at ease, lulled by their strange accents into a relaxed state.  After their day's rehearsal for some new theatrical work of locally existential importance, your thoughts turn to returning ... somewhere?\nOver the years the past fades utterly.  You die painfully but quickly a few years after the love of your life.  A life obscured by time and forgotten by everything but decay.\nNot bad.",
				options: [
					]
				},
			{
				sceneIndex: 84,
				sceneName: "Untitled Passage",
				sceneText: "onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},\nonLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},",
				options: [
					]
				},
			{
				sceneIndex: 85,
				sceneName: "think.  Think!  THINK.",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'Wake up then.  We haven't got all the time in the world.  Yet.'\nYou blearily open half an eyelid and percieve a frustrated sideways person.\nYou sit up.\nYou recognize the clothing as very old, and the wearer as a tall lanky teenager.  They remind you of your grad school cohort.  All knowledge and no sleep.\n'I am Nicholas.  You have stumbled upon something.  Or something has stumbled on you.  No one ever asks the leg of the table what a toe stubbing feels like.  Are you a table or a toe?'\n'A table?'\n'A toe?'\n'Wait, where am I!?'\nRun Away!",
				options: [
					["'A table?'", goToSceneIndex, [93]],
					["'A toe?'", goToSceneIndex, [67]],
					["'Wait, where am I!?'", goToSceneIndex, [29]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 86,
				sceneName: "Ask questions",
				character: WB_past_smile, background: bg_house_past,
				sceneText: "You ask your ersatz host five questions at the same time, but all that surfaces is a hoarsely muttered 'gruuhhhmuhhh.' --'Here, strange being.  You look parched.' --The owner of the smirking voice hands you a glass of water and you gulp it down with as much dignity as you can muster.  It's not much.\n'Where am I?'\n'Who are you?'",
				onLoad: {func: playSong,
				params: [alien_smoke, 0, true]},
				options: [
					["'Where am I?'", goToSceneIndex, [12]],
					["'Who are you?'", goToSceneIndex, [44]],
					]
				},
			{
				sceneIndex: 87,
				sceneName: "offer the banana",
				background: bg_theater_past, 
				onLoad: {func: playSong, params: [CONGRATS, 0, true]},
				sceneText: "They laugh.  You laugh.  All in great fun and an opportunity.  You're invited to stay, and embarrass yourself hilariously filling in for one of their troupe gone missing that day.  After, you just stand back to watch the evening unfold.",
				options: [
					["Meet the Dramatis Personea", goToSceneIndex, [83]],
					]
				},
			{
				sceneIndex: 88,
				sceneName: "Grab a gooey cinnamon bun",
				background: bg_office_present,  
				find:"cinnamonBun",
				sceneText: "This treat will serve as external courage to face the day's work tasks.  You silently thank yourself for the private washroom in your new offices as you notice the small package smearing sugary deliciousness on your pinkie.  Stepping back into the empty elevator, you...",
				options: [
					["Head to the roof", goToSceneIndex, [92]],
					["Head to your offices", goToSceneIndex, [25]],
					]
				},
			{
				sceneIndex: 89,
				sceneName: "Pass out",
				background: bg_spr_background,
				find: "brassKey",
				sceneText: "Your thoughts swirl half formed.  Maybe you hear shouting.  Maybe it's your mind trying to make sense of the rushing sound in your ears on the edge of intelligibility.  You think of faces half seen during your day.  The roar gets louder and you",
				options: [
					["listen for  the echo of laughter", goToSceneIndex, [8]],
					["think.  Think!  THINK.", goToSceneIndex, [85]],
					["follow intelligent eyes", goToSceneIndex, [51]],
					]
				},
			{
				sceneIndex: 90,
				sceneName: "Try to use the key to return",
				background: bg_spr_black,
				sceneText: "You focus on the key, willing yourself to return to some recognizable reality.\nSomething goes wrong.  Very wrong.\nYour friend screams in surprised anguish as each measurement of them is pulled into the future and/or past according to unknowable vortices.\nYou brace yourself in the...",
				options: [
					["Temporal Storm", goToSceneIndex, [23]],
					]
				},
			{
				sceneIndex: 91,
				sceneName: "'Why am I here?'",
				character: WB_past_neutral, background: bg_house_past,
				sceneText: "William's expression sobers slightly. 'Why are you here? A rather large question asked by wise to wiser.'\nHe drums his fingers against his thigh, considering.  Suddenly, Elizabethan pretense drops.  'The boundaries that hold our story together.  They're not strong enough for... something...  We don't know what.  You're caught in the fracture.  Not falling, but being swept along, like an ant caught in the tiny folds of a twisted handkerchief.'\nHis eyes meet yours, warm but worried and serious. 'Something's coming. Something that will require people who can twist themselves free.'\nHe leans forward. 'The question isn't why you're here. It's what you can do.'\nAsk about the key\nAsk what you can do to help\nTry to use the key to return",
				options: [
					["Ask about the key", goToSceneIndex, [9]],
					["Ask what you can do to help", goToSceneIndex, [48]],
					["Try to use the key to return", goToSceneIndex, [90]],
					]
				},
			{
				sceneIndex: 92,
				sceneName: "Head to the roof",
				background: bg_elevator_present,onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press R",
				options: [
					["Press R", goToSceneIndex, [82]],
					]
				},
			{
				sceneIndex: 93,
				sceneName: "'A table?'",
				character: ND_past_neutral, background: bg_house_past,
				sceneText: "'Sturdy but hard to motivate to do anything.  Understood.'\nYou stare wide eyed at your surroundings, assessing how safe you are.  This appears to be a workshop?  smithy?  Jewelry store?  Every surface has an crafting tool on it, or many in small piles stacked here or there.  There are no machines, but something whirs or hums in the background.\n\nAsk your precise host some questions",
				options: [
					["Ask your precise host some questions", goToSceneIndex, [69]],
					["Run Away!", goToSceneIndex, [100]],
					]
				},
			{
				sceneIndex: 94,
				sceneName: "Enter the strange door",
				background: bg_spr_future,
				sceneText: "You are introduced to two more souls who also seem to know much more than you do.  There's not much to do but launch into an explanation of your current situation.  Part way into your description of your morning, reality suddenly starts to sort of... fold in... toward itself.  The world seems to tilt dangerously while holding completely still.  As the clamor of eternity rises in your ears, a friend bumps you at an odd angle.  A very odd angle.  Somehow orthogonal to existence, and you feel yourself unstick and return to...",
				character: spr_all_three,
				requires: [ -1 ,["William", "Margaret", "Nicholas" ]],
				options: [
					["The Beginning", goToSceneIndex, [0]],
					["Get back to work.", goToSceneIndex, [18]],
					]
				},
			{
				sceneIndex: 95,
				sceneName: "Think it over before answering",
				sceneText: "She grins at your hesitation and offers you the small trinket in her hand.\n'Introspection is important.  But, you're ready.  Take our strength and'",
				character: MT_future_smile,
				background: bg_spr_future,
				find: "theRestOfTheKey",
				options: [
					["stop him.'", goToSceneIndex, [28]],
					]
				},
			{
				sceneIndex: 96,
				sceneName: "Fidget for a moment, putting off the tasks of the day",
				background: bg_office_present,
				sceneText: "You arrange your desk, half convincing yourself you'll be more productive if everything is just so.  You haven't been productive in years.  So when the building shudders slightly, as though a truck was rumbling past your 13th story window, you notice immediately.  Maybe an earthquake?  You check your phone, but there's nothing seismic in the area.\nGet back to work. \nRun Away from the Office!",
				options: [
					["Get back to work.", goToSceneIndex, [18]],
					["Run Away from the Office!", goToSceneIndex, [103]],
					]
				},
			{
				sceneIndex: 97,
				sceneName: "Finish getting ready and eat some breakfast",
				background: bg_house_present,
				sceneText: "You fuel your day, not really paying attention to your nourishment, just mindlessly consuming your morning's energy.  You gulp down a few good mouthfuls of bad coffee and head to work.",
				options: [
					["head to work.", goToSceneIndex, [99]],
					]
				},
			{
				sceneIndex: 98,
				sceneName: "Visit the canteen",
				background: bg_elevator_present, onLoad:{func: applyElevatorEffectsToBus,params:(global.musicBus)},
				sceneText: "Press 4",
				options: [
					["Press 4", goToSceneIndex, [19]],
					]
				},
			{
				sceneIndex: 99,
				sceneName: "head to work.",
				background: bg_office_present,
				sceneText: "Your lab is abuzz with activity.  Somber Doctors and Engineers nod their heads to you in deference as you traverse the labarynth of hallways to your new office.  Which floor was it on again?  You board the elevator and...\nHead to your offices\nVisit the canteen or \nHead to the roof",
				options: [
					["Head to your offices", goToSceneIndex, [25]],
					["Visit the canteen", goToSceneIndex, [98]],
					["Head to the roof", goToSceneIndex, [92]],
					]
				},
			{
				sceneIndex: 100,
				sceneName: "Run Away!",
				background: bg_street_past,
				onLoad: {func: theEnd, params: [rainbow_road, "How sad. Oh well."]},
				sceneText: "You dash, screaming with indignity, and find yourself in a busy street.  A horse attempts to avoid your sudden appearance, but swerving only serves to topple a carriage on top of you.  The horse is fine.  You, however...\nYou die as you lived.  Utterly accidentally.",

				options: [
					]
				},
			{
				sceneIndex: 101,
				sceneName: "Press 13",
				background: bg_office_present,onLoad:{func: removeElevatorEffectsFromBus,params:(global.musicBus)},
				sceneText: "You press the button marked 13, and head to your personal offices.  Hoping to catch up on some paperwork, you continue through the offensive smell of carpet adhesive and sit behind your desk.\nImmediately get to work\nFidget for a moment, putting off the tasks of the day",
				options: [
					["Immediately get to work", goToSceneIndex, [52]],
					["Fidget for a moment, putting off the tasks of the day", goToSceneIndex, [96]],
					]
				},
			{
				sceneIndex: 102,
				sceneName: "Put on a few layers of wool and follow him to adventure",
				sceneText: "Your new ... friend? introduces himself as Redbrook, called William.  He brings you to a theater where you are introduced with much more dignity and ettiquete to a band of actors. \nMeet the Dramatis Personea",
				background: bg_theater_past,
				onLoad: {func: playSong, params: [CONGRATS, 0, true]},
				character: WB_past_smile,
				options: [
					["Meet the Dramatis Personea", goToSceneIndex, [83]],
					]
				},
			{
				sceneIndex: 103,
				sceneName: "Run Away from the Office!",
				background: bg_present_street, 
				onLoad: {func: theEnd, params: ["sad"]},
				sceneText: "You dash, screaming with indignity, and find yourself in a busy street.  A pickup truck attempts to avoid your sudden appearance, but swerving only serves to topple the bed's contents on top of you at speed.  You are crushed by several bicycles, a snow shovel, two cinder blocks, and a broken down washing machine.  The truck is fine.  You, however...\nYou die as you lived.  Utterly accidentally.",
				options: [
					]
				},
			{
				sceneIndex: 104,
				sceneName: "Go back to bed",
				background: bg_house_present,
				sceneText: "You roll over, fold your pillow in half, hunker under your blanket, and try to recapture the magic of unconciousness.  Your fear begins to rise as you breathe slowly for an eternal five minutes, but you realize your thoughts are wandering.  You dream of a party you never attended.  Unfamiliar faces loom in and out of shadow, costumed waitstaff bringing drinks or food depending on when you look at them.  A celebra-- JANGLEJANGLEJANGLEDING.  JANGLEJANGLEJANGLEDING.\nYour alarm wakes you",
				options: [
					["Your alarm wakes you", goToSceneIndex, [26]],
					]
				},
		]
	}
}

