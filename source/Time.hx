package;

/**
 * ...
 * @author test
 */
class Time 
{
	private var week:Int;
	private var day:Int;
	private var hour:Int;
	private var minute:Int;
	
	//Is this a good idea?
	//private var lenience:Int;
	
	public function new(week:Int, day:Int, hour:Int, minute:Int) 
	{
		this.week = week;
		this.day = day;
		this.hour = hour;
		this.minute = minute;
	}
	
	public function greaterThanOrEqual (t:Time){
		if (week > t.week){
			return true;
		}
		else if (week < t.week){
			return false;
		}
		else if (day > t.day){
			return true;
		}
		else if (day < t.day){
			return false;
		}
		else if (hour > t.hour){
			return true;
		}
		else if (hour < t.hour){
			return false;
		}
		else if (minute >= t.minute){
			return true;
		}
		return false;
	}
}