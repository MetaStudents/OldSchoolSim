package;

/**
 * ...
 * @author test
 */
class Exam 
{

	private var startTime:Time;
	private var endTime:Time;
	private var size:Float;
	private var curve:Float;  //1 means no curve
	public function new(startTime:Time, endTime:Time, size:Float, ?curve:Float=1) 
	{
		this.startTime = startTime;
		this.endTime = endTime;
		this.size = size;
		this.curve = curve;
	}
	
}