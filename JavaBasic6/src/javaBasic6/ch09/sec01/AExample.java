package javaBasic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		A a = new A();
		a.aM();
		A.sa=2000; //�ܺο� �ִ� �� Ŭ������.ȣ��
		A.saM();
		
		A.B ab =a.new B();// A.B : A Ŭ������ ���� �ִ� B Ŭ����
		ab.b =300;
		ab.bM();
	}

}

class A {
	int a=10;
	void aM() {
		System.out.println(a);
		// b= b+100; // ���� Ŭ������ ������ ����� �� ����. -> ��Ӱ� �޸� �ܺ� Ŭ������ �ø��ٰ� �ؼ� ���� Ŭ������ �Բ� �÷����� ����.
		//bM(); // ���� Ŭ������ �޼ҵ带 ����� �� ����.
	}
	
	static int sa = 200; //���� ��� ������ �� �̸� ���� �޸𸮿� �ø���.
	static void saM() {
		System.out.println(sa);
//		System.out.println(b); //new�� �ϰ� ����Ѵ�.
//		System.out.println(a); // static �پ��ִ� �޼ҵ�� �̸� �ö󰡱� ������ new�� �ؼ� ���� �� �Ұ���
		// aM();
		// bM();
		
	}
	
	class B{
		// a= a+100; ���� �޼ҵ� �ȿ� ���϶�� ����ؾ��ϴµ� Ŭ���� �ȿ� ����� �־ ��� �Ұ�
		// aM(); �޼ҵ� �ȿ� �޼ҵ� ȣ���϶�� ����ؾ��ϴµ� Ŭ�������ٰ� ����� �־ ��� �Ұ�
		int b=20;
		void bM() {
			a=a+100; // ���� Ŭ�������� �ܺ� Ŭ���� �ʵ带 ����� �� �յ�.
			aM();//���� Ŭ�������� �ܺ�Ŭ������ �޼ҵ带 ȣ�� �� �� �ִ�.
			System.out.println(b);
		}
//		static int sb=200; //A Ŭ������ new�� �Ǳ� ���̴ϱ�
//		static void sbM() {
			
//		}
		
	}
}