package javaBasic7.ch11.sec01;

public class ExceptionEx {

	public static void printlength(String data) {
		int result = data.length();
		System.out.println("���� ��: "+ result);
	}
	
	
	public static void main(String[] args) {


//		����
//		try {
//			
//	//���� �߻��� �� ���� �ڵ� ���� ���Ѵ�.
//		int a= 10;
//		a= a/0;
//		System.out.println(a);
//		}catch (���ܸ� ����) {
//			//���� ���ܰ� �߻����� �� ó���ϴ� �ڵ� �ۼ�
//		}
		try {
		int a= 10;
		a= a/2;
		System.out.println(a);
		int [] iArr = {10,20,30};
		System.out.println(iArr[2]);
		
		printlength("this is java");
		printlength("aa");//null ���� �ڷᰡ ����
		

		Class.forName("java.lang.ABCDEF");
		
		}catch (ArithmeticException e) {
			System.out.println("�и� 0�̸� �ȵȴ�.");
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("�迭�� �ε��� ������ ������ϴ�.");
		} catch (NullPointerException e) {
			e.printStackTrace();
			System.out.println("null�� �����ؼ� ������ �����ϴ�.");
		} catch (ClassNotFoundException e) {
			System.out.println("Ŭ�������� Ʋ�Ƚ��ϴ�.");
			e.printStackTrace(); // ������ �߻��� �κп� ���� �κ��� �����Ͽ��� �˷���.
		} catch (Exception e) {
			System.out.println("��� ������ �θ� Ŭ����");
		} finally {
			//���� ������� ������(��, �ʼ�) ó���ؾߵ�
			System.out.println("DB �ݱ�");
			System.out.println("�α� �����ϱ�");
		}
	}

}
