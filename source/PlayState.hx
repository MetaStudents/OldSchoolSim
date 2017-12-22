package;

import flixel.FlxState;
//import source.Bar;
import flixel.util.FlxColor;
import flixel.FlxG;

class PlayState extends FlxState
{
	private var coef1:Float;
	private var coef2:Float;
	private var coef3:Float;
	private var workrate:Float;
	private var bar1:Bar;
	private var bar2:Bar;
	private var bar3:Bar;
	override public function create():Void
	{
		bgColor = FlxColor.WHITE;
		bar1 = new Bar(200, 400);
		add(bar1);
		bar2 = new Bar(300, 400);
		add(bar2);
		bar3 = new Bar(400, 400);
		add(bar3);
		coef1 = 0.03;
		coef2 = 0.06;
		coef3 = 0.09;
		workrate = 30;
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		bar1.y -= coef1 * elapsed * (FlxG.height - bar1.y);
		bar2.y -= coef2 * elapsed * (FlxG.height - bar2.y);
		bar3.y -= coef3 * elapsed * (FlxG.height - bar3.y);
		trace(bar3.y);
		
		if (FlxG.mouse.overlaps(bar1) && FlxG.mouse.pressed)
		    bar1.y += workrate * elapsed;
		if (FlxG.mouse.overlaps(bar2) && FlxG.mouse.pressed)
		    bar2.y += workrate * elapsed;
		if (FlxG.mouse.overlaps(bar3) && FlxG.mouse.pressed)
		    bar3.y += workrate* elapsed;
	}
}
