//package javaBasic5.ch08.sec05;
//
//public class Example {
//	public static void action(A a) {
//		a.method1();
//		if (a instanceof C) { // ���� �Ű����� C ��ü�� ���
//			// ���� ����ȯ ��) �θ�԰� ���� ��ٸ� �θ���� ���� - �ڵ� ����ȯ // ���� ���� - ��������ȯ
//			C c = (C) a;
//			c.method2();
//		}
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		action(new B());
//		action(new C());
//	}
//
//
//public class B implements A{
//
//	@Override
//	public void method1() {
//		System.out.println("B - method1()");
//	}
//	
//}
//
//public class C implements A{
//
//	@Override
//	public void method2() {
//		System.out.println("C - method2()");
//	}
//		// TODO Auto-generated method stub
//	}
//	
//}
//
//		
//}
