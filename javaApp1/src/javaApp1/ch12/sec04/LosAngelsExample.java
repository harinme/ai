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
		System.out.println((now.get(Calendar.MONTH)+1)+"월 " + (now.get(Calendar.DAY_OF_MONTH))+ "일 " );
		System.out.println(now.get(Calendar.HOUR)+"시 " + (now.get(Calendar.MINUTE))+ "분 " );
		
		String[] av = TimeZone.getAvailableIDs();
		for(String a :av) {
			System.out.println(a);
		}
		
		LocalDateTime now1 = LocalDateTime.now();
		DateTimeFormatter dtf =	DateTimeFormatter.ofPattern("yyyy.MM.dd a HH:mm:ss");
		System.out.println("현재시간: "+now1.format(dtf));
		// 1년후
		LocalDateTime now1After =now1.plusYears(1);
		System.out.println("1년 후: "+now1After.format(dtf));
		//3년전
		LocalDateTime now3Before = now1.minusYears(3);
		System.out.println("3년 전: "+now3Before.format(dtf));
		//2주 후
		//결과화면 대출일: 오늘날짜 반납일: 2주 후 날짜
		LocalDateTime now2week = now1.plusDays(14);
		System.out.println("대출일: "+now1.format(dtf)+" 반납일: "+now2week.format(dtf));

	}

}
