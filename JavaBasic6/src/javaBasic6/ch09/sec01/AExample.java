package javaBasic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		A a = new A();
		a.aM();
		A.sa=2000; //외부에 있는 건 클래스명.호출
		A.saM();
		
		A.B ab =a.new B();// A.B : A 클래스에 속해 있는 B 클래스
		ab.b =300;
		ab.bM();
	}

}

class A {
	int a=10;
	void aM() {
		System.out.println(a);
		// b= b+100; // 내부 클래스의 변수를 사용할 수 없다. -> 상속과 달리 외부 클래스를 올리다고 해서 내부 클래스를 함께 올려주지 않음.
		//bM(); // 내부 클래스의 메소드를 사용할 수 없다.
	}
	
	static int sa = 200; //정적 멤버 번역할 때 미리 스택 메모리에 올린다.
	static void saM() {
		System.out.println(sa);
//		System.out.println(b); //new를 하고 써야한다.
//		System.out.println(a); // static 붙어있는 메소드는 미리 올라가기 때문에 new를 해서 쓰는 것 불가능
		// aM();
		// bM();
		
	}
	
	class B{
		// a= a+100; 에러 메소드 안에 더하라고 명령해야하는데 클래스 안에 명령을 주어서 사용 불가
		// aM(); 메소드 안에 메소드 호출하라고 명령해야하는데 클래스에다가 명령을 주어서 사용 불가
		int b=20;
		void bM() {
			a=a+100; // 내부 클래스에서 외부 클래스 필드를 사용할 수 잇따.
			aM();//내부 클래스에서 외부클래스의 메소드를 호출 할 수 있다.
			System.out.println(b);
		}
//		static int sb=200; //A 클래스가 new가 되기 전이니까
//		static void sbM() {
			
//		}
		
	}
}