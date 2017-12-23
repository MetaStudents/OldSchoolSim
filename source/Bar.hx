package;

import flixel.FlxSprite;
import flixel.FlxG;
//import source.AssetPaths;
///import flixel.util.FlxColor;

/**
 * ...
 * @author test
 */
class Bar extends FlxSprite
{
    private var interestRate:Float;
	
	public function new(interestRate:Float, ?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		//makeGraphic(64, 16, FlxColor.BLACK);
		loadGraphic("assets/images/chimptail.png", false, 74, 65);
		
		this.interestRate = interestRate;
	}
	
	public function accrueInterest(elapsed:Float)
	{
		y -= interestRate * elapsed * (FlxG.height - y);
	}
	
	public function work (elapsed:Float, workRate:Float)
	{
		y += workRate * elapsed;
	}
	
}