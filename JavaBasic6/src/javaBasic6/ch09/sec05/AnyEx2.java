package javaBasic6.ch09.sec05;

public class AnyEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CImpl ci =new CImpl();
		ci.cM();
		C ci2 = new CImpl (); // ������
		
		// �͸�����ü
		C ci3 =new C() {

			@Override
			public void cM() {
				System.out.println("�͸���Ŭ������ �޼ҵ�");
				
				
			}
			
		}; //�������̽��� new �� �� ����. new ��ü() { ���� @Override }; - �͸� ��ü ����
		
		ci3.cM();
	}

}

interface C {
	abstract void cM();//�߻� �޼ҵ�
}

class CImpl implements C {

	@Override
	public void cM() {
		System.out.println("���� Ŭ���� (�ڽ�) �޼ҵ�");
		
	}
	
}