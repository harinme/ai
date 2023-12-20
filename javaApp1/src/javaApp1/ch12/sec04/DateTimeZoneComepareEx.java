package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeZoneComepareEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 특정날짜
		LocalDateTime startDateTime = LocalDateTime.of(2021, 1, 1, 0, 0);
		LocalDateTime stopDateTime = LocalDateTime.of(2021, 12, 31, 0, 0);
		LocalDateTime eventDateTime = LocalDateTime.of(2021, 12, 31, 0, 0);
		
		DateTimeFormatter dtf =	DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
		System.out.println("시작일: "+startDateTime.format(dtf));
		System.out.println("종료일: "+stopDateTime.format(dtf));
		
		if(startDateTime.isAfter(stopDateTime)) { //( ㅇㅇㅇ.isBefore(xxx)) ㅇㅇㅇ이 xxx 보다 앞에 입니까?
			System.out.println("이벤트 진행중입니다.");
			
			
		}else if(eventDateTime.isEqual(stopDateTime)) {
			System.out.println("이벤트 오늘 마감합니다.");
		}else {
			System.out.println("이벤트 마감했습니다. 다음 기회에");
		}
		
		// 2023-12-20 12:00 ~12-25 11:59 이벤트
		// 이벤트 기간이면 세일 70% / 이벤트 마감일은 세일 85% / 이벤트 종료
		
		LocalDateTime eventstart = LocalDateTime.of(2023, 12, 20, 12, 0);
		LocalDateTime eventend= LocalDateTime.of(2023, 12, 25, 11, 59);
		LocalDateTime currentDate = LocalDateTime.now();
		
		if( currentDate.isBefore(eventend)) {
			System.out.println("이벤트 진행중입니다. 세일 70%");
		} else if (currentDate.isEqual(stopDateTime)) {
			System.out.println("이벤트 오늘 마감합니다. 세일 85%");
		}else {
			System.out.println("이벤트 마감했습니다. 다음 기회에");
		}
		
	}

}
