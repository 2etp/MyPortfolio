package CoursePack;

public class CourseBean {
	
	private String group = "";
	private String courseType = ""; 
	private String courseCode = ""; 
	private String courseTitle = ""; 
	private String section = ""; 
	private double credit = 0;  
	private String classSchedule = "";
	private String others = "";
	
	public String getGroup() {
		return group;
	}
	
	public void setGroup(String _group) {
		this.group = _group;
	}
	
	public String getCourseType() {
		return courseType;
	}
	
	public void setCourseType(String _courseType) {
		this.courseType = _courseType;
	}
	
	public String getCourseCode() {
		return courseCode;
	}
	
	public void setCourseCode(String _courseCode) {
		this.courseCode = _courseCode;
	}
	
	public String getCourseTitle() {
		return courseTitle;
	}
	
	public void setCourseTitle(String _courseTitle) {
		this.courseTitle = _courseTitle;
	}
	
	public String getSection() {
		return section;
	}
	
	public void setSection(String _section) {
		this.section = _section;
	}

	public double getCredit() {
		return credit;
	}
	
	public void setCredit(double _credit) {
		this.credit = _credit;
	}
	
	public String getClassSchedule() {
		return classSchedule;
	}
	
	public void setClassSchedule(String _classSchedule) {
		this.classSchedule = _classSchedule;
	}
	
	public String getOthers() {
		return others;
	}
	
	public void setOthers(String _others) {
		this.others = _others;
	}
	
}
