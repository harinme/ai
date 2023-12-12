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
		this.model = model; //부모 필드 안에 넣는다
		this.color = color;
		
	}
public void setWifi(boolean wifi) {
	this.wifi = wifi;
	
}

public void internet() {
	System.out.println("인터넷을 연결합니다.");
	
	
	

}
}

