package javaBasic6.ch09.sec05;

//�͸� Ŭ����
public class AnyEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AA aa = new AA(); //�̸� �ִ� �ڽ� Ŭ���� ��üȭ
		aa.iaM();
		A a = new A () {
			@Override
			void iaM() {
				System.out.println("�̸� ���� �ڽ� Ŭ���� ���� �θ� ��üȭ�� {} �ְ� �ٷ� �ڽ� Ŭ���� ����");
				
			}
		};
		//�ڽ� �̸� ���� �ڽ� Ŭ���� ��üȭ �ϱ� - �͸� �ڽ� ��ü
		a.iaM();
	}

}

class A {
	
	void iaM() {
		System.out.println("�θ� Ŭ����");
		
	}
}
class AA extends A {
	@Override
	void iaM() {
		// TODO Auto-generated method stub
		System.out.println("�ڽ� Ŭ����- �̸� �ִ�.");
	}
}