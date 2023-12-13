package JavaBasic4.ch07.sec07;

public class Student extends Person {
	
public Student() {
	// 부모생성자 호출
	super();
	
	
}

@Override
	public void eat() {
		// TODO Auto-generated method stub
	System.out.println("떡볶이를 먹습니다.");
	}
}
