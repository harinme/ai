package javaBasic5.ch08.sec03;

public class Ȯ�ι���9�� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//388
		//A a = new A(); ��üȭ �� �� ����.
		AImpl a = new AImpl();
		Driver d = new Driver();
		d.a=new AImpl();
		d.drive(a);
		A a1 =new AImpl();
		BB bb = new BB();
		B b = new BB(); //�ڵ�����ȯ (b�� �θ�� ����
		BB bb2 = (BB) b; //(BB) ��������ȯ �ȿ� �־ ������ �ڽ��� �θ� Ŭ������ �ٲ� ex ���� �°�?
		bb2.aM();
		bb2.bM(); 
		
		b.aM();
		// b.bM(); // �ڽĿ��� �θ�� ��� ���� �θ𿡼� �ڽ��� ��� �Ұ�
		
		
	}

	
	}
class Driver{
	A a;
	void drive(A a) {
		a.aM();
	}
}

class B {
	int a=10;
	void aM() {
		System.out.println(a);
	}
	
}

class BB extends B{
int b=20;
void bM() {
	System.out.println(b);
}
	
	
}


interface A{
	//����� �����ϴ�!
	static final int a=10; // static final(������ �����Ǿ� ����)
abstract void aM(); // �߻� �޼ҵ�
default void dM() { }//����Ʈ �޼ҵ�� �������̵� �� �� �ִ�..
static void sM() {} //���� �޼ҵ�



}
class AImpl implements A{ //���� Ŭ����
	@Override
	public void aM() {
		// TODO Auto-generated method stub
		
	}

@Override
public void dM() {
	// TODO Auto-generated method stub
	A.super.dM();
}

}






















