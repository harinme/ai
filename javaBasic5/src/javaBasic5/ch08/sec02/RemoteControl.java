package javaBasic5.ch08.sec02;

public interface RemoteControl {

	//���
	int MAX_VOLUME = 10;
	int MIN_VOLUME = 0;

	
	//�߻� �޼ҵ� ���� abstract ���� ����
	void turnOn();
	void setVolume(int volume);
	void turnOff();
	void qrRead();

	//�ڹٰ� ���� �� �Ǹ鼭 �߰� �� �޼ҵ��
	//default �޼ҵ�(����Ʈ)
	default void defaltM() {
		

		System.out.println("QR �ڵ� �Է� �ޱ�");
		int sum = 0;
		for(int i=0; i<10; i++) 
			sum+=privateM(i);
	}
	
	// Static �޼ҵ�(����)
	static void staticM() {
		System.out.println("īī���� �����ޱ�");
	}
	
	
	//private �޼ҵ� - �޼ҵ� ����\���̽������� ����� �� ���ִ� �޼ҵ�)
	private int privateM(int i) {
		return i + 10;
		
	}
	
}

