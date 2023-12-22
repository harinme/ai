package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		LinkedList<Board> boardlist = new LinkedList<Board>();
		Board b1 = new Board(1, "제목1", "내용1", "홍길동", LocalDateTime.now());
		Board b2 = new Board(2, "제목2", "내용2", "이순신", LocalDateTime.now());
		Board b3 = new Board(3, "제목3", "내용3", "최경미", LocalDateTime.now());
		// 삽입하기
		boardlist.add(b1);
		boardlist.add(b2);
		boardlist.add(b3);
		
		System.out.println(boardlist.get(0).writer);// b1dml 참조 변수값이 나온다.
		System.out.println(boardlist.get(1).title);
		System.out.println(boardlist.get(2).writer);
		System.out.println(boardlist.get(2).writeDate);
		
		Board b0 = new Board(0, "제목0", "내용0", "관리자", LocalDateTime.now());
	//0번 인덱스에 b0를 삽입
		boardlist.add(0, b0);
		//"최경미가 있습니까?
//		1 단계 최경미가 있는 클래스 주소를 찾아야됨
//		2단계 클래스 주소가 링크드 리스트에 있는지 찾아야 됨
		Board findA = null;
		for (int i=0; i<boardlist.size(); i++) {
			System.out.println(boardlist.get(i).writer);
			if(boardlist.get(i).writer.equals("최경미")) {
				System.out.println("있습니다.");
				findA = boardlist.get(i);
			}
		}
		// "최경미"씨의 게시글 내용 찾기
//		1단계 주소를 변수에 담는다.
		
		System.out.println("최경미 씨가 작성한 게시글의 내용은?" + findA.content);
		
		// 게시글 번호 2번의 게시글 작성자는 누구인가요?? - 이순신
		for ( int i=0; i<boardlist.size(); i++) {
			System.out.println(boardlist.get(i).no);
			if (boardlist.get(i).no==2) {
				findA = boardlist.get(i);
			}
		}
		System.out.println(findA.writer);
		
		
		// 이순신 삭제하기
		for ( int i=0; i<boardlist.size(); i++) {
			if (boardlist.get(i).writer.equals("이순신")) {
				findA = boardlist.get(i);
				System.out.println(findA+"~");
			}
	}
		// 2단계 주소 삭제하기
		boardlist.remove(findA);
		
		// 모든 게시판 내용 출력하기
		for(int i=0; i<boardlist.size(); i++) {
			System.out.println(boardlist.get(i).toString());
			// 주소 출력하면 자동으로 '.toString()이 자바에 넣어진다
			//toString()은 object 메소드 타입이다.
		}
	}
}
//게시판
class Board{
	int no; // 게시판 번호
	String title; //제목
	String content; //내용
	String writer; //작성자
	LocalDateTime writeDate;//작성일
	
	
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
		return "번호 " + no +"제목 "+title + "내용 "+content +"작성자 "+writer+" 작성일 "+ writeDate;
	}
}
