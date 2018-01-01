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
	private var scheduler:Scheduler;
	
	private var lectures:Array<Lecture>;
	private var exams:Array<Exam>;
	
	private var currentLecture:Int;
	
	public function new(interestRate:Float, scheduler:Scheduler,
	    ?X:Float=0, ?Y:Float=0, ?lectures:Array<Lecture>, ?exams:Array<Exam>) 
	{
		super(X, Y);
		//makeGraphic(64, 16, FlxColor.BLACK);
		loadGraphic("assets/images/chimptail.png", false, 74, 65);
		
		this.interestRate = interestRate;
		this.scheduler = scheduler;
		this.lectures = (lectures != null)?lectures:[];
	    this.exams = (exams != null)?exams:[];
		
		this.currentLecture = 0;
	}
	
	public function update_ ( elapsed:Float, workRate:Float) // Has to be "update_" instead of "update" in order to take two arguments
	{
		super.update(elapsed);
		
		accrueInterest(elapsed);
		
		if (FlxG.mouse.overlaps(this) && FlxG.mouse.pressed)
		    work(elapsed, workRate);
		
		getHomework();
	}
	public function accrueInterest(elapsed:Float)
	{
		y -= interestRate * elapsed * (FlxG.height - y);
	}
	
	public function work (elapsed:Float, workRate:Float)
	{
		y += workRate * elapsed;
	}
	
	private function getHomework(){
		if (currentLecture < lectures.length){
			if (scheduler.isPast(lectures[currentLecture].endTime)){
				y -= lectures[currentLecture].homework.size;
				currentLecture++;
			}
		}
	}
}