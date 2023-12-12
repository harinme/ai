package JavaBasic4.ch07.sec01;

public class SmartphoneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Phone p = new Phone();
p.bell();

p.sendVoice("잘 잤어!");
p.receiveVoice("잘 잤어 너도 잘잤어?");


Smartphone sp =new Smartphone();
sp.sendVoice("오늘 뭐할 거야?");
sp.receiveVoice("오늘은 공부할거야");
sp.hangUp();

	Smartphone sp2 = new Smartphone("아이폰", "흰색");
	//아이폰 출력하기
	System.out.println(sp2.model);
	sp2.setWifi(false);
	if(sp2.wifi) {
		
		System.out.println(sp2.model + "와이파이가 됩니다.");
	
	}
	else {System.out.println(sp2.color + "와이파이가 안됩니다");
	}
	
	System.out.println(sp2.model + "은 " + sp2.color +"이고 ");
	sp2.bell();
	
	
	System.out.println(sp2.model + "의 메세지가 왔습니다");
	sp2.sendVoice("핸드폰 샀어?");
	
	
	// 부모 클래스에서 자식의 wifi 필드, 메소드 사용하기
	/* 부모클래스에서는 자식의 멤버들을 쓸 수 없다.
	p.wifi=(true);
	p.setwifi(true);
	p.internet(); */
	
	
	
	
	}
}
