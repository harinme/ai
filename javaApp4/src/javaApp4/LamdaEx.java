package javaApp4;

public class LamdaEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Inter01Impl i01=new Inter01Impl();
		i01.a();
		
		//���2 �͸� ���� Ŭ����
		Inter01 i001 =new Inter01() {

			@Override
			public void a() {
				// TODO Auto-generated method stub
				System.out.println("�͸� ���� Ŭ����");
			}
			
		};
		
		i001.a();// �޼ҵ� ȣ��
		
		new Inter02() {
			@Override
			public void b() {
				// TODO Auto-generated method stub
				System.out.println("�͸� ���� Ŭ����2");
				
			}
		};
		// ���3 ���ٽ� - �������̽� �ȿ� �߻� �޼ҵ尡 1���ۿ� ���� ��쿡�� ����
				Inter01 lamda001 = ()->System.out.println("���ٷ� ������ Ŭ����");
					 lamda001.a();
					Inter02 lamda002 = ()->System.out.println("���ٷ� ������ Ŭ����2");
						lamda002.b();
	}

}
interface Inter01{
	void a();
}
interface Inter02{
	void b();
}

class Inter01Impl implements Inter01{

	@Override
	public void a() {
		// TODO Auto-generated method stub
		System.out.println("�������̽��� ������ Ŭ����");
	}
	
}