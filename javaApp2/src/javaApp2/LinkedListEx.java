package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		LinkedList<Board> boardlist = new LinkedList<Board>();
		Board b1 = new Board(1, "����1", "����1", "ȫ�浿", LocalDateTime.now());
		Board b2 = new Board(2, "����2", "����2", "�̼���", LocalDateTime.now());
		Board b3 = new Board(3, "����3", "����3", "�ְ��", LocalDateTime.now());
		// �����ϱ�
		boardlist.add(b1);
		boardlist.add(b2);
		boardlist.add(b3);
		
		System.out.println(boardlist.get(0).writer);// b1dml ���� �������� ���´�.
		System.out.println(boardlist.get(1).title);
		System.out.println(boardlist.get(2).writer);
		System.out.println(boardlist.get(2).writeDate);
		
		Board b0 = new Board(0, "����0", "����0", "������", LocalDateTime.now());
	//0�� �ε����� b0�� ����
		boardlist.add(0, b0);
		//"�ְ�̰� �ֽ��ϱ�?
//		1 �ܰ� �ְ�̰� �ִ� Ŭ���� �ּҸ� ã�ƾߵ�
//		2�ܰ� Ŭ���� �ּҰ� ��ũ�� ����Ʈ�� �ִ��� ã�ƾ� ��
		Board findA = null;
		for (int i=0; i<boardlist.size(); i++) {
			System.out.println(boardlist.get(i).writer);
			if(boardlist.get(i).writer.equals("�ְ��")) {
				System.out.println("�ֽ��ϴ�.");
				findA = boardlist.get(i);
			}
		}
		// "�ְ��"���� �Խñ� ���� ã��
//		1�ܰ� �ּҸ� ������ ��´�.
		
		System.out.println("�ְ�� ���� �ۼ��� �Խñ��� ������?" + findA.content);
		
		// �Խñ� ��ȣ 2���� �Խñ� �ۼ��ڴ� �����ΰ���?? - �̼���
		for ( int i=0; i<boardlist.size(); i++) {
			System.out.println(boardlist.get(i).no);
			if (boardlist.get(i).no==2) {
				findA = boardlist.get(i);
			}
		}
		System.out.println(findA.writer);
		
		
		// �̼��� �����ϱ�
		for ( int i=0; i<boardlist.size(); i++) {
			if (boardlist.get(i).writer.equals("�̼���")) {
				findA = boardlist.get(i);
				System.out.println(findA+"~");
			}
	}
		// 2�ܰ� �ּ� �����ϱ�
		boardlist.remove(findA);
		
		// ��� �Խ��� ���� ����ϱ�
		for(int i=0; i<boardlist.size(); i++) {
			System.out.println(boardlist.get(i).toString());
			// �ּ� ����ϸ� �ڵ����� '.toString()�� �ڹٿ� �־�����
			//toString()�� object �޼ҵ� Ÿ���̴�.
		}
	}
}
//�Խ���
class Board{
	int no; // �Խ��� ��ȣ
	String title; //����
	String content; //����
	String writer; //�ۼ���
	LocalDateTime writeDate;//�ۼ���
	
	
	public Board(int no, String title, String content,String writer,LocalDateTime writeDate) {
		super();
		this.no=no;
		this.title=title;
		this.content=content;
		this.writer=writer;
		this.writeDate = writeDate;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "��ȣ " + no +"���� "+title + "���� "+content +"�ۼ��� "+writer+" �ۼ��� "+ writeDate;
	}
}
