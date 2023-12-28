package javaApp4.ch16.sec03;

public class LambdaEx04 {

	public static void main(String[] args) {
		// 706p 메소드 참조
		Person person = new Person();
		// 방법2 익명 구현 객체 코드
//		Calculable calculable = new Calculable() {
//			
//			@Override
//			public double calc(double x, double y) {
//				Computer.staticMethod(x, y);
//				return 0;
//			}
//		};
		//방법3 람다식 변경
//		Calculable calculable = (double x, double y) -> {Computer.staticMethod(x, y); return 0; };
//		Calculable calculable = ( x, y) -> Computer.staticMethod(x, y);
		
		// 방법4. 메소드 참조
		// 인터페이스 변수 = 클래스명 :: 클래스 안에 있는 메소드명
		// 인터페이스의 추상메소드로 입력하여 클래스 안에 있는 메소드를 수행(결과) 출력해라
		Calculable calculable = Computer ::staticMethod;
		person.action(calculable);
		
		Computer computer	=new Computer();
//		익명 구현 객체
//		Calculable calculable1 = new Calculable() {
//			
//			@Override
//			public double calc(double x, double y) {
//				// TODO Auto-generated method stub
//				return computer.instanceMethod(x, y);
//			}
//		};
		//람다식
//		Calculable calculable1 = (double x, double y) -> {return computer.instanceMethod(x, y);};
//		Calculable calculable1 = (x,  y) ->  computer.instanceMethod(x, y);
		// (x,y) 값이 들어가면 화살표 뒤에 문장이 실현된다.
		
		// 메소드 참조
		Calculable calculable1 = computer::instanceMethod;
		person.action(calculable1);
	}

}
@FunctionalInterface
interface Calculable{
	double calc(double x, double y); //추상메소드
	
}

class Person{
	public void action(Calculable calculable) {
		double result = calculable.calc(10,4);
		System.out.println("결과 : "+result);
	}
}
class Computer{
	public static double staticMethod (double x, double y) {
		
		return x+y;
	}
	public double instanceMethod (double x, double y) {
		
		return x*y;
	}
}
