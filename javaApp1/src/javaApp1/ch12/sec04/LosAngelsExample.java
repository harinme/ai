package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelsExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TimeZone timezone = TimeZone.getTimeZone("America/Los_Angles");
		TimeZone timezone2 = TimeZone.getTimeZone("CET");
		
		Calendar now = Calendar.getInstance(timezone2);
		System.out.println((now.get(Calendar.MONTH)+1)+"�� " + (now.get(Calendar.DAY_OF_MONTH))+ "�� " );
		System.out.println(now.get(Calendar.HOUR)+"�� " + (now.get(Calendar.MINUTE))+ "�� " );
		
		String[] av = TimeZone.getAvailableIDs();
		for(String a :av) {
			System.out.println(a);
		}
		
		LocalDateTime now1 = LocalDateTime.now();
		DateTimeFormatter dtf =	DateTimeFormatter.ofPattern("yyyy.MM.dd a HH:mm:ss");
		System.out.println("����ð�: "+now1.format(dtf));
		// 1����
		LocalDateTime now1After =now1.plusYears(1);
		System.out.println("1�� ��: "+now1After.format(dtf));
		//3����
		LocalDateTime now3Before = now1.minusYears(3);
		System.out.println("3�� ��: "+now3Before.format(dtf));
		//2�� ��
		//���ȭ�� ������: ���ó�¥ �ݳ���: 2�� �� ��¥
		LocalDateTime now2week = now1.plusDays(14);
		System.out.println("������: "+now1.format(dtf)+" �ݳ���: "+now2week.format(dtf));

	}

}
