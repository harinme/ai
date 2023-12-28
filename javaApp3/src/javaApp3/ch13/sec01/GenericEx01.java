package javaApp3.ch13.sec01;

public class GenericEx01 {

	
		// p582
		//���ѵ� Ÿ�� �Ķ���͸� ���� ���ʸ� �޼ҵ�
		public static <T extends Number> boolean compare(T t1, T t2) {
			//T Ÿ���� ���
			System.out.println("compate("+t1.getClass().getSimpleName()+", "+t2.getClass().getSimpleName()+")");
			
			//Number �� �޼ҵ� ���
			double v1=t1.doubleValue();
			double v2=t2.doubleValue();
			
			return (v1==v2);
		}
		
		public static void main(String[] args) {
			//���ʸ� �޼ҵ� ȣ��
			boolean result1=compare(10,20);
			System.out.println(result1);
			System.out.println();
			
			//���ʸ� �޼ҵ� ȣ��
			boolean result2= compare(4.5, 4.5);
			System.out.println(result2);
	}

}
