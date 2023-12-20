package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeZoneComepareEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Ư����¥
		LocalDateTime startDateTime = LocalDateTime.of(2021, 1, 1, 0, 0);
		LocalDateTime stopDateTime = LocalDateTime.of(2021, 12, 31, 0, 0);
		LocalDateTime eventDateTime = LocalDateTime.of(2021, 12, 31, 0, 0);
		
		DateTimeFormatter dtf =	DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
		System.out.println("������: "+startDateTime.format(dtf));
		System.out.println("������: "+stopDateTime.format(dtf));
		
		if(startDateTime.isAfter(stopDateTime)) { //( ������.isBefore(xxx)) �������� xxx ���� �տ� �Դϱ�?
			System.out.println("�̺�Ʈ �������Դϴ�.");
			
			
		}else if(eventDateTime.isEqual(stopDateTime)) {
			System.out.println("�̺�Ʈ ���� �����մϴ�.");
		}else {
			System.out.println("�̺�Ʈ �����߽��ϴ�. ���� ��ȸ��");
		}
		
		// 2023-12-20 12:00 ~12-25 11:59 �̺�Ʈ
		// �̺�Ʈ �Ⱓ�̸� ���� 70% / �̺�Ʈ �������� ���� 85% / �̺�Ʈ ����
		
		LocalDateTime eventstart = LocalDateTime.of(2023, 12, 20, 12, 0);
		LocalDateTime eventend= LocalDateTime.of(2023, 12, 25, 11, 59);
		LocalDateTime currentDate = LocalDateTime.now();
		
		if( currentDate.isBefore(eventend)) {
			System.out.println("�̺�Ʈ �������Դϴ�. ���� 70%");
		} else if (currentDate.isEqual(stopDateTime)) {
			System.out.println("�̺�Ʈ ���� �����մϴ�. ���� 85%");
		}else {
			System.out.println("�̺�Ʈ �����߽��ϴ�. ���� ��ȸ��");
		}
		
	}

}
