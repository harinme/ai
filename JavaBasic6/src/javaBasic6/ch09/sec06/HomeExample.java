package javaBasic6.ch09.sec06;

public class HomeExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//home ��ü ����
		
		Home home = new Home();
		
		//�͸� ���� ��ü�� ���Ե� �ʵ� ���
		home.use1();
		
		//�͸� ���� ��ü�� ���Ե� �ʵ� ���
		home.use2();
		
		home.use3(new RemoteControl() {
			@Override
			public void turnOn() {
				System.out.println("������ �մϴ�.");
			}
@Override
			public void turnOff() {
	System.out.println("������ ���ϴ�.");
				
			}
		});
	
	}

}
