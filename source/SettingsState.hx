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
class SettingsState extends FlxState
{
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		
		// screen object variables
		var _txtTitle:FlxText,
			_btnBackToMain:FlxButton;
		
		// temp variables
		
		// State Title
		_txtTitle = new FlxText(50, 0, 0, "Settings", 22);
		_txtTitle.alignment = "center";
		_txtTitle.screenCenter(true, false);
		_txtTitle.y = (FlxG.height / 2) - 100;
		add(_txtTitle);
		
		// Create button to go Back to main menu
		_btnBackToMain = new FlxButton(0, 0, "Back", click_btnBackToMain);
		_btnBackToMain.screenCenter(true, false);
		_btnBackToMain.y = (FlxG.height / 2);
		add(_btnBackToMain);
	}
	
	// Fucntion: go Back to main menu
	private function click_btnBackToMain():Void
	{
		FlxG.switchState(new MenuState());
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