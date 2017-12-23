package;

import flixel.FlxState;
//import source.Bar;
import flixel.util.FlxColor;
import flixel.FlxG;

class PlayState extends FlxState
{
	private var workRate:Float;
	private var bar1:Bar;
	private var bar2:Bar;
	private var bar3:Bar;
	override public function create():Void
	{
		bgColor = FlxColor.WHITE;
		bar1 = new Bar(0.03, 200, 400, [new Lecture(new Time(0,1,0), new Time(0,2,0), new Homework(50))]);
		add(bar1);
		bar2 = new Bar(0.06, 300, 400);
		add(bar2);
		bar3 = new Bar(0.09, 400, 400);
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
