package javaApp4.ch16.sec01;

public class LamdaEx01 {

	public static void main(String[] args) {
		// �͸� ���� Ŭ����
		A a =new A() {

			@Override
			public int aM(int a, double b) {
				// TODO Auto-generated method stub
				return (int)(a+b);
			}
			
		};
		System.out.println(a.aM(10, 1.8));
		
		//���ٽ�
//		A a1= (int c, double d)-> {return (int)(c+d);};
//		A a1= (c, d)-> {return (int)(c+d);}; // �Ű� ������ �ڷ����� ������ �� ����.
		A a1= (c, d)-> (int)(c+d); // { } ���� ������ 1���̴ϱ� ����, return�� ����
		System.out.println(a1.aM(20, 3.8));
		
		B b1 = (x,y,z)-> {
			System.out.println("�̸��� " +x);
			System.out.println("Ű�� " +y);
			if (z) System.out.println("��");
			else System.out.println("��");
		};
		
		b1.bM("ȫ�浿", 170, true);
		b1.bM("�̼���", 165, false);
	}

}
// interface 1���� 1�� �ִ� �Ÿ� �Լ��� interface��� ��.
// @~~ ������̼� �ٷ� �Ʒ��� �ִ� ��ü�� ������ ������ �� ���.
@FunctionalInterface // �ٷ� �Ʒ��� �ִ� ��ü�� ������ �� ��
interface A{
	int aM(int a, double b);
	
}
interface B{
	void bM(String x, Integer y, Boolean z);
}