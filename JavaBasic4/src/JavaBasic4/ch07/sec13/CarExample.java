package JavaBasic4.ch07.sec13;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car myCar = new Car();
		
		myCar.tire =new Tire();
		
		myCar.run();
		
		myCar.tire =new HankookTire();
		myCar.run();
		
		myCar.tire=new KumhoTire();
	myCar.run();
	}

}
