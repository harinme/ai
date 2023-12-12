package JavaBasic4.ch07.sec02;

public class Teacher extends Student {
	String 학과;
	public void teaching() {
		System.out.println("가르친다");
	}

	public Teacher() {
		System.out.println("자식 클래스 나 me");
		
		
	}
	
	public Teacher(String name, int age, String dept, String 학과) {
	
		this.dept = dept;
		this.학과 = 학과;
	
	}

	
}
