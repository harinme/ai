package javaBasic6.ch09.sec05;

public class AnyEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		B b = new B ();
		b.bM();
		//B Ŭ������ �ڽ� Ŭ������ �ʿ���. �ֳ��ϸ� bM()�� �������ؼ� ����Ϸ���
		
		B bb=new B() {
			//�͸� �ڽ� Ŭ����
			int b = 20;
			
			@Override
			void bM() {
				System.out.println("�ڽ� �޼ҵ�"+b);
			}
		};
		// �θ� Ŭ������ new�ϰ� �ٷ� �ڿ� {}�� �Ἥ �ڽ��� Ŭ������ ������ ���ִ� ��
	bb.bM();
	}

}

class B {
	void bM() {
		System.out.println("�θ� �޼ҵ�");
	}
	
}