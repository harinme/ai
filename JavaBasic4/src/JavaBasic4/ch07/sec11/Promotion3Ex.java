package JavaBasic4.ch07.sec11;

public class Promotion3Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

A a = new A();
a.eat();

System.out.println("------------");
B b = new B();
A b1 = new B();
b.eat(); // 떡볶이 자식 자료
b1.eat();// 떡볶이 자식 자료 부모타입 변수로 선언해도 자식 것이 나온다****
		

System.out.println("------------");
BB bb = new BB();
A bb1 = new BB();
bb.eat(); // 떡볶이 자식 자료
bb1.eat();

System.out.println("------------");
C c = new C();
B c1 = new C();
A c2 = new C();
c.eat(); // 떡볶이 자식 자료
c1.eat();
c2.eat();
	}

	
}

class A{
	void eat() {
		System.out.println("밥");
	}
}
class B extends A{
	@Override
	void eat() {
		System.out.println("떡볶이");
	}
}

	class BB extends A{
		@Override
		void eat() {
			System.out.println("햄버거");
		}
	}
	class C extends B{
		@Override
		void eat() {
			System.out.println("피자");
		}
	}