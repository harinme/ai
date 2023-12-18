package javaBasic6.ch09.sec05;

public class AnyEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		B b = new B ();
		b.bM();
		//B 클래스의 자식 클래스가 필요함. 왜냐하면 bM()을 재정의해서 사용하려고
		
		B bb=new B() {
			//익명 자식 클래스
			int b = 20;
			
			@Override
			void bM() {
				System.out.println("자식 메소드"+b);
			}
		};
		// 부모 클래스를 new하고 바로 뒤에 {}을 써서 자식의 클래스의 내용을 써주는 것
	bb.bM();
	}

}

class B {
	void bM() {
		System.out.println("부모 메소드");
	}
	
}