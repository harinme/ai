package javaApp5.ch17.sec05;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javaApp5.ch17.sec05.Student;

public class StreamEx05 {

	public static void main(String[] args) {
		// 744p  ��� �����ϱ�
		
		List<Student> sList	=new ArrayList<Student>();
		sList.add(new Student("ȫ�浿", 30));
		sList.add(new Student("�ſ��", 10));
		sList.add(new Student("���̼�", 20));
		
		// �䱸����) ������ �������� ������������ ������ ��Ʈ�� ���
		sList.stream()
			 .sorted(new StudentCom()) // --.sorted() ���Ľ�����.
			 .forEach(p-> System.out.println(p.getName()+" "+p.getScore())); // ���� ������ ���������� �ʾұ� ������ error
		
		// ����- �ݺ��ؼ� �ϳ��� �����ͼ� ó���ϴ� ���� �ǹ���
		// ��Ī- ������ ���� ���θ� �����ϴ� ����ó�����
		
		
		
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

