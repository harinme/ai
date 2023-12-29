package javaApp5.ch17.sec01;

import java.util.*;
import java.util.stream.*;

public class StreamEx01 {

	public static void main(String[] args) {
//		// Stream(��Ʈ��)- �帣��
//		// ��Ʈ�� ó�� ����: �÷��� or �迭 --> �������� ��Ʈ�� --> <�߰��ܰ�(����, ���� ��) ���� ����> --> ���� ��Ʈ��
//		// 1�ܰ� �÷��� �Ǵ� �迭
//		List<Student>  list = Arrays.asList(new Student("ȫ�浿", 10),
//											new Student("�ſ��", 20),	
//											new Student("���̼�", 30)); // Arrays �� �迭 /asList()�� ()�� �ִ� ��Ҹ� ����Ʈ�� ����� �Լ�
//		// 2�ܰ� �������� ��Ʈ��
//		Stream<Student> studentStream	=list.stream(); //--.steam()-> ��Ʈ���� ����.
//		
//		// 3�ܰ� ������ ������ ���� �߰��ܰ�(����, ���� ��)
//		// int applyAsInt(T value); ���� �Ǿ� ����
//		IntStream scoreStream	= studentStream.mapToInt(/* ��⿡  */student ->student.getScore());
//		
//		// 4�ܰ� ������ ����� ���ϱ� ���� ��Ʈ��
//		double avg	=scoreStream.average().getAsDouble();
//		
//		System.out.println(avg);
		
		// 1�ܰ� �÷��� �Ǵ� �迭
		List<Student>  list = Arrays.asList(new Student("ȫ�浿", 10),
											new Student("�ſ��", 20),	
											new Student("���̼�", 30));
		
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