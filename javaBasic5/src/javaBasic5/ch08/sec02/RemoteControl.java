package javaBasic5.ch08.sec02;

public interface RemoteControl {

	//상수
	int MAX_VOLUME = 10;
	int MIN_VOLUME = 0;

	
	//추상 메소드 선언 abstract 생략 가능
	void turnOn();
	void setVolume(int volume);
	void turnOff();
	void qrRead();

	//자바가 버전 업 되면서 추가 된 메소드들
	//default 메소드(디폴트)
	default void defaltM() {
		

		System.out.println("QR 코드 입력 받기");
		int sum = 0;
		for(int i=0; i<10; i++) 
			sum+=privateM(i);
	}
	
	// Static 메소드(정적)
	static void staticM() {
		System.out.println("카카오톡 인증받기");
	}
	
	
	//private 메소드 - 메소드 인터\페이스에서만 사용할 수 ㅜ있는 메소드)
	private int privateM(int i) {
		return i + 10;
		
	}
	
}

