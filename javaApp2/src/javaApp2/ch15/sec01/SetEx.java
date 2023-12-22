package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
		// set 특징: 중복된 요소를 제거한다. 중복 저장되지 않는다.

		Set<Integer> set = new HashSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);

		System.out.println(set.size());
		
		//출력
		Iterator<Integer> it =set.iterator(); // 반복자를 쓴다
		while (it.hasNext()) {
			System.out.println(it.next());//순서 없이 출력됨.
		}
		
		//set 안에 40이 있나요? 아니요
		System.out.println(set.contains(40));
		
		// set 안에 요소가 비어 있나요? 아니요 -> 650p
		System.out.println(set.isEmpty());
	
		
		//set 안의 요소 50을 지우세요
		set.remove(50);
		
		it =set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		//set 안에 요소 100 추가하기
		set.add(100);
		//set 안에 요소 80 삭제하기
		set.remove(80);
		// 출력하기
		it =set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
	}

}
