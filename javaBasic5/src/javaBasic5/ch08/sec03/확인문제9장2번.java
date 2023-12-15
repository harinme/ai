package javaBasic5.ch08.sec03;

public class 확인문제9장2번 {
	public static void main(String[] args) {
		Triver1 d = new Triver1();
		A1 a1 =new B1();
		C1 c1 = new C1();
		D1 d1 = new D1();
		E1 e1 = new E1();
		d1.method(d);
		
		
		
	}
	
	
}


class Triver1{
	void method(A a) {
		
	}
}

interface A1{
	
}
class B1 implements A1{
	
}

class C1 implements A1{
	
}

class D1 extends C1 {

	public void method(Triver1 d) {
		// TODO Auto-generated method stub
		
	}
	
}

class E1 extends C1 {
	
}
