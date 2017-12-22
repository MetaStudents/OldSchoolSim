package;

import flixel.FlxSprite;
//import source.AssetPaths;
///import flixel.util.FlxColor;

/**
 * ...
 * @author test
 */
class Bar extends FlxSprite
{

	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		//makeGraphic(64, 16, FlxColor.BLACK);
		loadGraphic("assets/images/chimptail.png", false, 74, 65);
		
		
	}
	
}