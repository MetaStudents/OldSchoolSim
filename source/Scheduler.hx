package;

import flixel.util.FlxTimer;

/**
 * ...
 * @author test
 */
class Scheduler 
{
    private var timer:FlxTimer;
	private var dayLength:Float;
	private var numDays:Int;
	private var hourLength:Float;
	private var numHours:Int;
	private var day:Int;
	private var hour:Int;
	private var week:Int;
	private var onHour:FlxTimer->Void;
	private var onDay:FlxTimer->Void;
	private var onWeek:FlxTimer->Void;
	
	public function new(dayLength:Float, numDays:Int, ?onHour:FlxTimer->Void, ?onDay:FlxTimer->Void, ?onWeek:FlxTimer->Void) 
	{
		this.dayLength = dayLength;
		this.numDays = numDays;
		this.hourLength = dayLength / 24;
		this.numHours = numDays * 24;
		
		trace("hefe");
		this.onHour = (onHour != null)?onHour:nullFunction;
		this.onDay = (onDay != null)?onDay:nullFunction;
		this.onWeek = (onWeek != null)?onWeek:nullFunction;
		trace("hi!");
		
		this.day = 0;
		this.hour = 0;
		this.week = 0;
		
		timer = new FlxTimer();
		timer.start(hourLength, callBack, numHours);
	}
	
	public function callBack(t:FlxTimer){
		if (hour < 23)
		{
		    hour++;
			onHour(t);
		}
		else if (day < 6)
		{
		    hour = 0;
			day++;
			onDay(t);
		}
		else
		{
			day = 0;
			week++;
			onWeek(t);
		}
	}
	
	public function getWeek(){
		return week;
	}
	public function getDay(){
		return day;
	}
	public function getHour(){
		return hour;
	}
	public function getMinute(){
		return Math.floor(timer.progress * 60);
	}
	/*public function getTime(){
		return new Time(getWeek(), getDay(), getHour(), getMinute());
	}*/
	public function isPast(time:Time){
		if (week > time.week){
			return true;
		}
		else if (week < time.week){
			return false;
		}
		else if (day > time.day){
			return true;
		}
		else if (day < time.day){
			return false;
		}
		else if (hour > time.hour){
			return true;
		}
		else if (hour < time.hour){
			return false;
		}
		else if (getMinute() >= time.minute){
			return true;
		}
		return false;
	}
	
	static private function nullFunction(t:FlxTimer):Void
	{}
}