package JavaBasic4.ch07.sec02;

public class Teacher extends Student {
	String �а�;
	public void teaching() {
		System.out.println("����ģ��");
	}

	public Teacher() {
		System.out.println("�ڽ� Ŭ���� �� me");
		
		
	}
	
	public Teacher(String name, int age, String dept, String �а�) {
	
		this.dept = dept;
		this.�а� = �а�;
	
	}

	
}
