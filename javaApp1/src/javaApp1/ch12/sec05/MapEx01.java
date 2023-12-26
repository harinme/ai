package javaApp1.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class MapEx01 {

	public static void main(String[] args) {
		HashMap<Integer,String> hm = new HashMap<Integer,String>();

		hm.put(1, "홍길동1");
		hm.put(2, "홍길동2");
		hm.put(3, "홍길동3");
		hm.put(4, "홍길동4");
		
		//몇 개 있나요?
		System.out.println(hm.size());
		
		// 3이라는 키가 있나요? ->containsKey(x) x라고 하는 키가 포함되어있는지 확인
		System.out.println(hm.containsKey(3));
		
		// 값이 홍길동5가 있나요?
		System.out.println(hm.containsValue("홍길동5"));
	
		//키를 넣으면 값이 나오게 출력하기
		System.out.println(hm.get(2));
		
		hm.remove(4);
		
		// 키 값들만 구한다. 키 값을 넣어준다.
		Set<Integer> keys= hm.keySet();
		Iterator<Integer> it =keys.iterator();
		while(it.hasNext()) {
			System.out.println(hm.get(it.next()));
		}
		//entrySet()
		Set<Entry<Integer, String>> e = hm.entrySet();// 키랑 값을 다같이 넣어줌.
		Iterator<Entry<Integer, String>> it2 = e.iterator();
		while (it2.hasNext()) {
			Entry<Integer, String> e1 = it2.next(); // 1=홍길동1
			Integer keyE1 = e1.getKey(); // 키를 얻는다1
			System.out.println(hm.get(keyE1)+"~");	 // 값을 얻는다
			System.out.println(e1.getValue()+"~~");//값을 얻는다.
		}
		
	}

	
}
