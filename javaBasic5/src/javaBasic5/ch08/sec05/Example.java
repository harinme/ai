//package javaBasic5.ch08.sec05;
//
//public class Example {
//	public static void action(A a) {
//		a.method1();
//		if (a instanceof C) { // 문제 매개값이 C 객체일 경우
//			// 강제 형변환 예) 부모님과 내가 산다면 부모님이 가장 - 자동 형변환 // 내가 가장 - 강제형변환
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
