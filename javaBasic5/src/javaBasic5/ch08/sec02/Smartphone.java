package javaBasic5.ch08.sec02;

public class Smartphone implements RemoteControl {

	private int volume;

	@Override
	public void turnOn() {
		System.out.println("�ڵ����� �մϴ�.");
	}

	@Override
	public void setVolume(int volume) {
		System.out.println("�ڵ����� ���ϴ�.");
		if(volume>RemoteControl.MAX_VOLUME) {
			this.volume=RemoteControl.MAX_VOLUME;
		} else if(volume<RemoteControl.MIN_VOLUME);{
			this.volume=RemoteControl.MIN_VOLUME;
		}  {
			this.volume = volume;
		}
		System.out.println("���� ����Ʈ���� ����: "+this.volume);
		
	}

	@Override
	public void turnOff() {
		// TODO Auto-generated method stub
		defaltM();
		
	}

	@Override
	public void qrRead() {
		// TODO Auto-generated method stub
		
	}

}
