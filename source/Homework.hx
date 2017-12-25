package;

/**
 * ...
 * @author test
 */
class Homework 
{

	private var size:Float;
	private var title:String;
	public function new(size:Float, ?title:String="") 
	{
		this.size = size;
		this.title = title;
	}
	
	public function getSize(){
		return size;
	}
	
}