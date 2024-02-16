package edu.sejong.ex;

public class Grades {
	private String name;
	private double kor;
	private double eng;
	private double math;
	
	public Grades(){
		
	}

	public double getKor() {
		return kor;
	}

	public void setKor(double kor) {
		this.kor = kor;
	}

	public double getEng() {
		return eng;
	}

	public void setEng(double eng) {
		this.eng = eng;
	}

	public double getMath() {
		return math;
	}

	public void setMath(double math) {
		this.math = math;
	}

	public double getSum() {
		return (kor + eng + math);
	}
	
	public double getAvg() {
		return getSum()/3.0;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		String grade = "";
		double avg = getAvg();
		if(avg >= 90)
			grade = "수";
		else if(avg >= 80)
			grade = "우";
		else if(avg >= 70)
			grade = "미";
		else if(avg >= 60)
			grade = "양";
		else
			grade = "가";			
		return grade;
	}
}
