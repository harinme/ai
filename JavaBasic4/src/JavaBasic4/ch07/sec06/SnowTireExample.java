package JavaBasic4.ch07.sec06;

public class SnowTireExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
SnowTire snowTire = new SnowTire();
   Tire tire = (Tire) snowTire;

   snowTire.run();
   tire.run(); //다형성 문제
	}

}
