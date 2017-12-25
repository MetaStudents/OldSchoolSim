package;

/**
 * ...
 * @author test
 */
class Lecture 
{

	private var startTime:Time;
	private var endTime:Time;
	private var homework:Homework;
	private var dueTime:Time;
	public function new(startTime:Time, endTime:Time, homework:Homework, ?dueTime:Time)
	{
		this.startTime = startTime;
		this.endTime = endTime;
		this.homework = homework;
		this.dueTime = dueTime;
	}
	
	public function getStartTime() {
		return startTime;
	}
	public function getEndTime() {
		return endTime;
	}
	public function getHomework() {
		return homework;
	}
	public function getDueTime() {
		return dueTime;
	}
	
}