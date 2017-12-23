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
	
	private var lectures:Array<Lecture>;
	private var exams:Array<Exam>;
	
	public function new(interestRate:Float, ?X:Float=0, ?Y:Float=0, ?lectures:Array<Lecture>, ?exams:Array<Exam>) 
	{
		super(X, Y);
		//makeGraphic(64, 16, FlxColor.BLACK);
		loadGraphic("assets/images/chimptail.png", false, 74, 65);
		
		this.interestRate = interestRate;
		this.lectures = lectures;
		this.exams = exams;
	}
	
	public function update_ ( elapsed:Float, workRate:Float) // Has to be "update_" instead of "update" in order to take two arguments
	{
		super.update(elapsed);
		
		accrueInterest(elapsed);
		
		if (FlxG.mouse.overlaps(this) && FlxG.mouse.pressed)
		    work(elapsed, workRate);
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