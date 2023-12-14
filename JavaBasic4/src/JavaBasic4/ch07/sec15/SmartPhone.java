package JavaBasic4.ch07.sec15;

public class SmartPhone extends Phone{


@Override
public void turnOn() {
	 System.out.println("스마트 폰을 켭니다.");
}

@Override
public void turnOff() {
	 System.out.println("스마트 폰을 끕니다.");
	
}

}