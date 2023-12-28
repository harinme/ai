package javaApp4.ch16.sec01;

public class LamdaEx01 {

	public static void main(String[] args) {
		// 익명 구현 클래스
		A a =new A() {

			@Override
			public int aM(int a, double b) {
				// TODO Auto-generated method stub
				return (int)(a+b);
			}
			
		};
		System.out.println(a.aM(10, 1.8));
		
		//람다식
//		A a1= (int c, double d)-> {return (int)(c+d);};
//		A a1= (c, d)-> {return (int)(c+d);}; // 매개 변수의 자료형을 생략할 수 있음.
		A a1= (c, d)-> (int)(c+d); // { } 안의 문장이 1개이니까 생략, return도 생략
		System.out.println(a1.aM(20, 3.8));
		
		B b1 = (x,y,z)-> {
			System.out.println("이름은 " +x);
			System.out.println("키는 " +y);
			if (z) System.out.println("남");
			else System.out.println("여");
		};
		
		b1.bM("홍길동", 170, true);
		b1.bM("이수현", 165, false);
	}

}
// interface 1개에 1개 있는 거를 함수적 interface라고 함.
// @~~ 어노테이션 바로 아래에 있는 객체의 성격을 제한할 때 사용.
@FunctionalInterface // 바로 아래에 있는 객체를 제한할 때 씀
interface A{
	int aM(int a, double b);
	
}
interface B{
	void bM(String x, Integer y, Boolean z);
}