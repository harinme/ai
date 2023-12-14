package JavaBasic4.ch07.sec16;

public class 확인문제7장 {
public static void action(A a) {
	a.method1();
	if(a instanceof C) {
	((C) a).method2();	
	}
}
	public static void main(String[] args) {

	MainMainActivity m = new MainMainActivity();
		m.onCreate();
		
		action(new A());
		action(new B());
		action(new C());
		}

	}


