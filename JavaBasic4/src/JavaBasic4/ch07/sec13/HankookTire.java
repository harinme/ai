package JavaBasic4.ch07.sec13;

//자식 클래스=하위클래스=세부내용(한국 타이어, mySql)
public class HankookTire extends Tire{

	@Override
	public void roll() {
		System.out.println("한국타이어가 굴러갑니다.");
		System.out.println("MySql 프로그램에 연결합니다.");
	}
}
