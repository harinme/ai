package javaApp1.ch12.sec04;

import java.util.Calendar;

public class CalendarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// �̱��� ����
		Calendar now =Calendar.getInstance(); // �޷��� ����� �� �ִ� �޼ҵ�
		int a1  = now.get(Calendar.YEAR); //����� - �Ѵ� �⵵��
		int a2 = now.get(1); //����� - �Ѵ�  �⵵��
		System.out.println(a1+" "+a2);
		
		int a3  = now.get(Calendar.MONTH)+1; //����� - �Ѵ� ����. ���� 0��~11�� ���� +1 ���ָ� 1��~12��
		int a4 = now.get(2)+ 1; //����� - �Ѵ�  ����
		System.out.println(a3+" "+a4);
		
		int a5  = now.get(Calendar.DAY_OF_MONTH); //����� - �ش� ���� ��¥�� ��Ÿ��.
		int a6 = now.get(5); //����� - �Ѵ� �ش� ���� ��¥�� ��Ÿ��.
		System.out.println(a5+" "+a6);
		
		int a7  = now.get(Calendar.DAY_OF_WEEK); //����� - �ش� ������ ��Ÿ��.
		int a8 = now.get(7); //����� - �Ѵ� �ش� ���� ��¥�� ��Ÿ��.
		System.out.println(a7+" "+a8);
		
		int a9  = now.get(Calendar.AM_PM); //����� -
		int a10 = now.get(9); //����� //AM �̸� 0 , PM�̸� 1
		System.out.println(a9+" "+a10);
		
		if(a9== Calendar.AM) {
			System.out.println("����");
		} else {
			System.out.println("����");
		}
		
		int a11  = now.get(Calendar.HOUR); //����� -
		int a12 = now.get(10); //����� //
		System.out.println(a11+" "+a12);
		
		int a13  = now.get(Calendar.MINUTE); //����� -
		int a14 = now.get(10); //����� //
		System.out.println(a13+" "+a14);
		
		int a15  = now.get(Calendar.SECOND); //����� -
		int a16 = now.get(10); //����� //
		System.out.println(a15+" "+a16);

		//2023�� 12�� 20�� 11�� 53��
		System.out.println(now.get(Calendar.YEAR)+"�� " + (now.get(Calendar.MONTH)+1)+ "�� " );
	}

}
