package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import openfl.system.System;

using flixel.util.FlxSpriteUtil;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		
		// screen object variables
		var _txtTitle:FlxText,
			_btnContinueGame:FlxButton,
			_btnNewGame:FlxButton,
			_btnLoadGame:FlxButton,
			_btnOpenSettings:FlxButton,
			_btnOpenCredits:FlxButton,
			_btnQuitGame:FlxButton;
		
		// temp variables
		
		// Game Title
		_txtTitle = new FlxText(50, 0, 0, "Kingdom\nFail", 22);
		_txtTitle.alignment = "center";
		_txtTitle.screenCenter(true, false);
		_txtTitle.y = (FlxG.height / 2) - 100;
		add(_txtTitle);
		
		// Create button to Continue Game
		_btnContinueGame = new FlxButton(0, 0, "Continue Game", click_btnQuit);
		_btnContinueGame.screenCenter(true, false);
		_btnContinueGame.y = (FlxG.height / 2) + 30;
		//add(_btnContinueGame);
		
		// Create button to start New Game
		_btnNewGame = new FlxButton(0, 0, "New Game", click_btnNewGame);
		_btnNewGame.screenCenter(true, false);
		_btnNewGame.y = (FlxG.height / 2) + 60;
		add(_btnNewGame);
		
		// Create button to Load Game
		_btnLoadGame = new FlxButton(0, 0, "Load Game", click_btnQuit);
		_btnLoadGame.screenCenter(true, false);
		_btnLoadGame.y = (FlxG.height / 2) + 90;
		//add(_btnLoadGame);
		
		// Create button to open Settings
		_btnOpenSettings = new FlxButton(0, 0, "Settings", click_btnOpenSettings);
		_btnOpenSettings.screenCenter(true, false);
		_btnOpenSettings.y = (FlxG.height / 2) + 120;
		add(_btnOpenSettings);
		
		// Create button to open Credits
		_btnOpenCredits = new FlxButton(0, 0, "Credits", click_btnQuit);
		_btnOpenCredits.screenCenter(true, false);
		_btnOpenCredits.y = (FlxG.height / 2) + 150;
		//add(_btnOpenCredits);
		
		// Create button to Exit Game
		_btnQuitGame = new FlxButton(0, 0, "Exit Game", click_btnQuit);
		_btnQuitGame.screenCenter(true, false);
		_btnQuitGame.y = (FlxG.height / 2) + 180;
		add(_btnQuitGame);
	}
	
	// Fucntion: start New Game
	private function click_btnNewGame():Void
	{
		FlxG.switchState(new PlayState());
	}	
	
	// Fucntion: Open Settings
	private function click_btnOpenSettings():Void
	{
		FlxG.switchState(new SettingsState());
	}	
	
	// Fucntion: Quit Game
	private function click_btnQuit():Void
	{
		System.exit(0);
	}

	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}