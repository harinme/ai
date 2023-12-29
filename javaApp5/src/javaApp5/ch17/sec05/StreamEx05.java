package javaApp5.ch17.sec05;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javaApp5.ch17.sec05.Student;

public class StreamEx05 {

	public static void main(String[] args) {
		// 744p  요소 정렬하기
		
		List<Student> sList	=new ArrayList<Student>();
		sList.add(new Student("홍길동", 30));
		sList.add(new Student("신용권", 10));
		sList.add(new Student("유미선", 20));
		
		// 요구사항) 점수를 기준으로 오름차순으로 정렬한 스트림 얻기
		sList.stream()
			 .sorted(new StudentCom()) // --.sorted() 정렬시켜줌.
			 .forEach(p-> System.out.println(p.getName()+" "+p.getScore())); // 정렬 기준을 제시해주지 않았기 때문에 error
		
		// 루핑- 반복해서 하나씩 가져와서 처리하는 것을 의미함
		// 매칭- 조건의 충족 여부를 조사하는 최종처리기능
		
		
		
	}

}
class StudentCom implements Comparator<Student>{

	@Override
	public int compare(Student o1, Student o2) {
		Integer o1S	=Integer.valueOf(o1.getScore());
		Integer o2S	=Integer.valueOf(o2.getScore());
		return o1S.compareTo(o2S);
	}
	
}


class Student {
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

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	
	
}

