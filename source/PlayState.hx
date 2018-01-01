package;

import flixel.FlxState;
//import source.Bar;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var workRate:Float;
	private var bar1:Bar;
	private var bar2:Bar;
	private var bar3:Bar;
	
	private var scheduler:Scheduler;
	
	override public function create():Void
	{
		scheduler = new Scheduler(60, 30);
		
		var lecture:Lecture = {
			startTime : { week:0, day:0, hour:1, minute:0 },
			endTime : { week:0, day:0, hour:2, minute:0 },
			dueTime : { week:0, day:2, hour:1, minute:0 },
			homework : {
				size : 50,
				title : "Assignment 1"
			}
		};
		
		bgColor = FlxColor.WHITE;
		bar1 = new Bar(0.03, scheduler, 200, 400, [lecture]);
		add(bar1);
		bar2 = new Bar(0.06, scheduler, 300, 400);
		add(bar2);
		bar3 = new Bar(0.09, scheduler, 400, 400);
		add(bar3);
		workRate = 30;
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		bar1.update_(elapsed, workRate);
		bar2.update_(elapsed, workRate);
		bar3.update_(elapsed, workRate);
	}
}
