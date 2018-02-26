package;

class Course {
	private var name:String;
	private var dept:String;
	private var num:Int;
	private var lectures:Array<Lecture>;
	private var exams:Array<Exam>;
	private var homeworks:Array<Homework>;
	public function new(nameIn:String, deptIn:String, numIn:Int, lecturesIn:Array<Lecture>, examsIn:Array<Exam>, homeworksIn:Array<Homework>) {
		name = nameIn;
		dept = deptIn;
		num = numIn;
		lectures = lecturesIn;
		exams = examsIn;
		homeworks = homeworksIn;
	}
}