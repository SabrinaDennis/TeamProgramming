function DialogStructManager(){
	return {
		scenes: 
		{
			"1":{
			sceneIndex: 1,
			sceneName: "Opening Scene",
			sceneText: "You see a maze all around you.",
			options: [
				["Go west", goToSceneIndex, [1]],
				["Go east", goToSceneIndex, ["CanBeAString"]],
				["Go north", goToSceneIndex, [3]],
				["Stay here", goToSceneIndex, [4]]
				]
			},
		"CanBeAString": {
			sceneIndex: "CanBeAString",
			sceneName: "It can!",
			sceneText: "This will be easier.",
			options: [
			]
			
		}
		}
		
	}
}

function goToSceneIndex(parameters){
	global.currentIndex=parameters[0];
	destroyAllObjects();
	populateAllObjects();
	
}