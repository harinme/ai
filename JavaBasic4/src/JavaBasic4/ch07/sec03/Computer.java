package JavaBasic4.ch07.sec03;

public class Computer extends Calculator{
//자식
	@Override
	public double areaCircle(double r) {
		// TODO Auto-generated method stub
		System.out.println("Computer객체의 areaCircle() 실행");
		
		return 2 * 3.14* r;

	}
}
