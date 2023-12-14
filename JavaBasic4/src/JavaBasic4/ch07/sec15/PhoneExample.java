package JavaBasic4.ch07.sec15;

public class PhoneExample {

	public static void main(String[] args) {
		// 326p
		
		Play play =new Play();
		
		
		SmartPhone s =new SmartPhone();
play.playing(s);
play.stop(s);

Iphone i =	new Iphone();
play.playing(i);
play.stop(i);

//Phone phone = new Phone(); // 추상 클래스는 객체화 할 수 없음.

	}
}
