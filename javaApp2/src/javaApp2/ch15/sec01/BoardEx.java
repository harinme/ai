package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class BoardEx {

	public static void main(String[] args) {
		Board b1 = new Board("ȫ�浿", "�ڹ�","��ƴ�");
		Board b2 = new Board("�̼���", "���̽�","����");
		Board b3 = new Board("ȫ�浿", "������","���� �� �����");
		Board b4 = new Board("ȫ�浿", "������","���� �� �����");
		Board b5 = new Board("�̼���", "�Ǵٽ�","���� �� �����");
		
		Set<Board> bset = new HashSet<Board>();
		bset.add(b1);
		bset.add(b2);
		bset.add(b3);
		bset.add(b4);
		bset.add(b5);

		System.out.println(bset.size());
		
		Iterator<Board> i = bset.iterator();
		while (i.hasNext()) {
			System.out.println(i.next().toString());
		}
	}

}

class Board {
	String writer;
	String title;
	String content;
	public Board(String writer, String title, String content) {
		super();
		this.writer = writer;
		this.title = title;
		this.content = content;
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return writer.hashCode() + title.hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Board) {
			Board b = (Board) obj;
			if(writer.equals(b.writer)&& title.equals(b.title))
				return true;
		}
		return false;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return writer.toString()+" "+title.toString()+" "+content.toString();
	}
}