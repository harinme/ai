package javaApp5.ch17.sec01;

import java.util.*;
import java.util.stream.*;

public class StreamEx01 {

	public static void main(String[] args) {
//		// Stream(스트림)- 흐르다
//		// 스트림 처리 순서: 컬렉션 or 배열 --> 오리지널 스트림 --> <중간단계(필터, 매핑 등) 생략 가능> --> 최종 스트림
//		// 1단계 컬렉션 또는 배열
//		List<Student>  list = Arrays.asList(new Student("홍길동", 10),
//											new Student("신용권", 20),	
//											new Student("유미선", 30)); // Arrays 는 배열 /asList()는 ()에 있는 요소를 리스트로 만드는 함수
//		// 2단계 오리지널 스트림
//		Stream<Student> studentStream	=list.stream(); //--.steam()-> 스트림을 만듦.
//		
//		// 3단계 점수를 가지고 오기 중간단계(필터, 매핑 등)
//		// int applyAsInt(T value); 생략 되어 있음
//		IntStream scoreStream	= studentStream.mapToInt(/* 요기에  */student ->student.getScore());
//		
//		// 4단계 점수의 평균을 구하기 최종 스트림
//		double avg	=scoreStream.average().getAsDouble();
//		
//		System.out.println(avg);
		
		// 1단계 컬렉션 또는 배열
		List<Student>  list = Arrays.asList(new Student("홍길동", 10),
											new Student("신용권", 20),	
											new Student("유미선", 30));
		
		double avg=
					list.stream()
					.mapToInt(student ->student.getScore())
					.average().getAsDouble();
		System.out.println(avg);
		
		
	}	

}

class Student{
	private String name;
	private int score;
	public Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public int getScore() {
		return score;
	}
	
	
}