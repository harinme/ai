package javaApp4.ch16.sec03;

public class LambdaEx04 {

	public static void main(String[] args) {
		// 706p �޼ҵ� ����
		Person person = new Person();
		// ���2 �͸� ���� ��ü �ڵ�
//		Calculable calculable = new Calculable() {
//			
//			@Override
//			public double calc(double x, double y) {
//				Computer.staticMethod(x, y);
//				return 0;
//			}
//		};
		//���3 ���ٽ� ����
//		Calculable calculable = (double x, double y) -> {Computer.staticMethod(x, y); return 0; };
//		Calculable calculable = ( x, y) -> Computer.staticMethod(x, y);
		
		// ���4. �޼ҵ� ����
		// �������̽� ���� = Ŭ������ :: Ŭ���� �ȿ� �ִ� �޼ҵ��
		// �������̽��� �߻�޼ҵ�� �Է��Ͽ� Ŭ���� �ȿ� �ִ� �޼ҵ带 ����(���) ����ض�
		Calculable calculable = Computer ::staticMethod;
		person.action(calculable);
		
		Computer computer	=new Computer();
//		�͸� ���� ��ü
//		Calculable calculable1 = new Calculable() {
//			
//			@Override
//			public double calc(double x, double y) {
//				// TODO Auto-generated method stub
//				return computer.instanceMethod(x, y);
//			}
//		};
		//���ٽ�
//		Calculable calculable1 = (double x, double y) -> {return computer.instanceMethod(x, y);};
//		Calculable calculable1 = (x,  y) ->  computer.instanceMethod(x, y);
		// (x,y) ���� ���� ȭ��ǥ �ڿ� ������ �����ȴ�.
		
		// �޼ҵ� ����
		Calculable calculable1 = computer::instanceMethod;
		person.action(calculable1);
	}

}
@FunctionalInterface
interface Calculable{
	double calc(double x, double y); //�߻�޼ҵ�
	
}

class Person{
	public void action(Calculable calculable) {
		double result = calculable.calc(10,4);
		System.out.println("��� : "+result);
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
