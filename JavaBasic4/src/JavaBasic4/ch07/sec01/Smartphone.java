package JavaBasic4.ch07.sec01;

public class Smartphone extends Phone{

	
	public boolean wifi;
	
	

	public Smartphone() {
		// TODO Auto-generated constructor stub
	}
	public Smartphone(String string, String string2) {
		// TODO Auto-generated constructor stub
	}
	public void SmartPhone(String model, String color) {
		this.model = model; //�θ� �ʵ� �ȿ� �ִ´�
		this.color = color;
		
	}
public void setWifi(boolean wifi) {
	this.wifi = wifi;
	
}

public void internet() {
	System.out.println("���ͳ��� �����մϴ�.");
	
	
	

}
}

