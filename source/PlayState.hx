package;

import flixel.FlxState;
//import source.Bar;
import flixel.util.FlxColor;
import haxe.Json;

class PlayState extends FlxState
{
	private var workRate:Float;
	private var bar1:Bar;
	private var bar2:Bar;
	private var bar3:Bar;
	
	private var scheduler:Scheduler;
	
	override public function create():Void
	{
		var scheduleJson = openfl.Assets.getText("assets/schedule.json");
		trace(scheduleJson);
		var schedule = Json.parse(scheduleJson);
		scheduler = new Scheduler(60, 30);
		
		bgColor = FlxColor.WHITE;
		bar1 = new Bar(0.03, scheduler, 200, 400, schedule[0]);
		add(bar1);
		bar2 = new Bar(0.06, scheduler, 300, 400, schedule[1]);
		add(bar2);
		bar3 = new Bar(0.09, scheduler, 400, 400, schedule[2]);
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
