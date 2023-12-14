package JavaBasic4.ch07.sec14;

public class DriverExample {

	public static void main(String[] args) {
Driver driver = new Driver();

Bus bus = new Bus();
driver.drive(bus);

Taxi taxi = new Taxi();
driver.drive(taxi);

System.out.println(bus instanceof Bus); // instanceof
System.out.println(taxi instanceof Taxi); // taxi라는 참조변수로 Taxi라는 객체를 참조(연결) 가능		
System.out.println(bus instanceof Vehicle); //자식에서 부모 클래스로 객체 참조(연결) 가능
	
	
	}

}
