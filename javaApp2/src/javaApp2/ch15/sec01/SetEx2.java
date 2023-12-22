package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		// String 객체 set 넣기
		// 과일 가게: 사과 배 귤 바나나 사과 배
		//set 요소로 넣기
		//set의 구현 클래스 HashSet, TreeSet
		Set<String> set = new HashSet<String>(); // ctrl+shift+ o(영문) - import 자동으로 시킴
		set.add("사과");
		set.add("배");
		set.add("귤");
		set.add("바나나");
		set.add("사과");
		set.add("배");
		

		// set 안에 요소 개수 구하기
		System.out.println(set.size());
		
		//"메론 팔아요? contains()
		System.out.println(set.contains("메론"));
		
		// set 안에 있는 거 출력하기
		Iterator<String> it = set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		// set 안에 있는 모든 요소 삭제하기
		set.clear();
			System.out.println(set);
		}
	

}
