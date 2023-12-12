package JavaBasic4.ch07.sec02;

//부모클래스 = 슈퍼클래스 = 상위클래스
public class Person {

	String name;
	int age;
	private String dept;
	
	public void eat() {
		System.out.println("먹는다");
		
	}
	
	public void sleep() {
		System.out.println("잔다");
		
	}
	
	public Person(String name, int age, String dept) {
		System.out.println("부모 클래스 입니다.");
		this.name = name;
		this.age = age;
		this.dept = dept;
		
	}
	
}
