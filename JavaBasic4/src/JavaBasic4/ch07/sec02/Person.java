package JavaBasic4.ch07.sec02;

//�θ�Ŭ���� = ����Ŭ���� = ����Ŭ����
public class Person {

	String name;
	int age;
	private String dept;
	
	public void eat() {
		System.out.println("�Դ´�");
		
	}
	
	public void sleep() {
		System.out.println("�ܴ�");
		
	}
	
	public Person(String name, int age, String dept) {
		System.out.println("�θ� Ŭ���� �Դϴ�.");
		this.name = name;
		this.age = age;
		this.dept = dept;
		
	}
	
}
