package javaBasic5.ch08.sec02;

public class RemoteControlExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		RemoteControl rc;
		rc=new Television();
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
	
		
		rc=new Smartphone();
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
		
		rc.defaltM();
		RemoteControl.staticM();
		
	}

}
