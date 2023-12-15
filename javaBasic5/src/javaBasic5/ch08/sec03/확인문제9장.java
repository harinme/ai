package javaBasic5.ch08.sec03;

public class 확인문제9장 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//388
		//A a = new A(); 객체화 할 수 없다.
		AImpl a = new AImpl();
		Driver d = new Driver();
		d.a=new AImpl();
		d.drive(a);
		A a1 =new AImpl();
		BB bb = new BB();
		B b = new BB(); //자동형변환 (b가 부모라서 가능
		BB bb2 = (BB) b; //(BB) 강제형변환 안에 넣어서 강제로 자식을 부모 클래스로 바꿈 ex 가업 승계?
		bb2.aM();
		bb2.bM(); 
		
		b.aM();
		// b.bM(); // 자식에서 부모는 사용 가능 부모에서 자식은 사용 불가
		
		
	}

	
	}
class Driver{
	A a;
	void drive(A a) {
		a.aM();
	}
}

class B {
	int a=10;
	void aM() {
		System.out.println(a);
	}
	
}

class BB extends B{
int b=20;
void bM() {
	System.out.println(b);
}
	
	
}


interface A{
	//상수만 가능하다!
	static final int a=10; // static final(보통은 생략되어 있음)
abstract void aM(); // 추상 메소드
default void dM() { }//디폴트 메소드는 오버라이드 할 수 있다..
static void sM() {} //정적 메소드



}
class AImpl implements A{ //구현 클래스
	@Override
	public void aM() {
		// TODO Auto-generated method stub
		
	}

@Override
public void dM() {
	// TODO Auto-generated method stub
	A.super.dM();
}

}






















