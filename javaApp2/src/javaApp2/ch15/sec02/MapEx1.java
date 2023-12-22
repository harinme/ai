package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx1 {

	public static void main(String[] args) {
		// 656p
		Map<Integer,String> m1 = new HashMap<Integer,String>();
		
		//삽입, 넣기
		m1.put(1,"이순신");
		m1.put(2,"박수연");
		m1.put(3,"홍길동");
		m1.put(3,"홍길동1");
		m1.put(3,"홍길동2");
	
		//출력하기, 꺼내보기
		System.out.println(m1.get(3)); //키를 넣으면 값이 나온다 -> 단 같은 키면 마지마겡 넣은 걸로 나옴
		
		m1.remove(3);
		System.out.println(m1.get(3));
		
		
		// 전체 출력하기
		//1단계 키들을 모은다 keySet()
		//2단계 키를 1개씩 출력한다(반복문)
		Set<Integer> m1Keys = m1.keySet(); // 키들을 담는다.
		
		Iterator<Integer> i = m1Keys.iterator();
		while(i.hasNext()) {
//			System.out.println(i.next()+"@@@");// 키 찍기
			System.out.println(m1.get(i.next())+"???"); //values  값 인쇄
		}
		
		Map<String,Double> m2 = new HashMap<String,Double>();
		//M2에 값 넣기
		m2.put("a", 2.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 13.5);
		System.out.println(m2.get("b")+"~~");
		
		//크기 구하기
		System.out.println(m1.size()); //키가 동일하면 동등객체로 판단하고 새로운 것으로 대체한다 -> 마지막의 키 값으로 남는다.

		Map<String, String> m3 = new HashMap<String, String>();
		m3.put("홍길동","과장");
		m3.put("이순신","부장");
		m3.put("최경미","사원");
		m3.put("홍길동","사장");
		
		
		//크기는? 회사 인원수는?
		System.out.println(m3.size());
		//이순신의 직책은?
		System.out.println(m3.get("이순신"));
		// 최경미의 직책은
		System.out.println(m3.get("최경미"));
		// 홍길동의 직책은
		System.out.println(m3.get("홍길동"));
		//최경미가 퇴사했다 삭제하기
		m3.remove("최경미");
		
		//전체 출력하기
		System.out.println(m3.get("홍길동"));
		System.out.println(m3.get("이순신"));
		
		
		//전체 출력하려면 key를 반복해서 넣어 주면 된다.
		//keySet() 모든 키를 Set() 담는다.
		Set<String> m3Keys = m3.keySet(); // 키들을 담는다.
		
		Iterator<String> it = m3Keys.iterator();
		while(it.hasNext()) {
//			System.out.println(it.next());//키 값들이 반복해서 출력됨
			System.out.println(m3.get(it.next())+ "###");
		}
	}

}

