package javaBasic6.ch09.sec06;

public class Home {
// �ʵ忡 �͸� ���� ��ü ����
	private RemoteControl rc = new RemoteControl () {
		public void turnOn() {
		System.out.println("TV�� �մϴ�.");
	}

public void turnOff() {
	System.out.println("TV�� ���ϴ�");
}
};
	
		public void use1() {
			rc.turnOn();
			rc.turnOff();
			
		}
		
		public void use2() {
			RemoteControl rc = new RemoteControl() {
@Override
				public void turnOn() {
	System.out.println("�������� �մϴ�.");
}
@Override
				public void turnOff() {
		System.out.println("�������� ���ϴ�.");
					
				}
					
				};
				
				rc.turnOn();
				rc.turnOff();
				
			}
		public void use3(RemoteControl rc) {
			rc.turnOn();
			rc.turnOff();
		}
	}
