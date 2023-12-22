package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// list 특징 순서가 有 /중복 저장이 가능
		int [] iarr = {1,2};
		for (int i : iarr) {
			System.out.println(i);
		}

		for (int i=0; i <iarr.length; i++) {
			System.out.println(iarr[i]);
		}
		// 3, 4 추가하고 싶을경우- 불가능
		//{1,2,3,4}
		
		//list의 구현 클래스인 ArraysList를 이용시 가능
		ArrayList<Integer> arrList = new ArrayList<Integer>();
		// <E> 제너릭 자료의 형을 미리 지정하는 것
		arrList.add(1);
		//상자의 크기는 정해져 있지 않음. 위의 작업으로 상자에 1을 추가함.
		arrList.add(2);
		System.out.println(arrList.size()); //ArrayList 안에 몇개의 요소가 있는지를 반환함.
		//3,4 추가하기
		arrList.add(3);
		arrList.add(4);

		//0번 인덱스에 0을 -7을 넣기.
		arrList.add(0, -7);
		// 반복문 사용해 전체 출력
		for (int i=0; i <arrList.size(); i++) { //i= 0 1 2 3 4
			System.out.println(arrList.get(i)); // 인덱스 번호에 있는 요소를 출력하기
		}
		
		//문자열을 ArrayList 넣기
		ArrayList<String> sArr = new ArrayList<String>(); // 배열인데 String 문자를 넣겠다!
		// 사과 배 귤 바나나
		sArr.add("사과");
		sArr.add("배");
		sArr.add("귤");
		sArr.add("바나나");
		sArr.add("사과");
		sArr.add("사과");
		
		// 귤과 바나나 사이에 파인애플 넣기
		sArr.add(3, "파인애플");
		//사과 배 사이에 메론
		sArr.add(1, "메론");
	
		// 전체 출력하기
		for (int i=0; i <arrList.size(); i++) { //i= 사과 메론 배 귤 파인애플 메론
			System.out.println(sArr.get(i)+ " ");
	}

		//귤을 천혜향으로 수정하기
		// 힌트 set()
		sArr.set(3,"천혜향");
		
		// 바나나 삭제하기  remove()
		// sArr.remove(5);
		sArr.remove("파인애플");
		
		for (int i=0; i <arrList.size(); i++) { 
			System.out.println(sArr.get(i)+ " ");}
			
		// 파인애플이 있습니까? contains()
		// 결과 없습니다.
		
		if (sArr.contains("파인애플")){

			System.out.println("있습니다.");
		}else {
			System.out.println("없습니다.");
		}
		
		//사과와 배 있어요?
		if (sArr.contains("사과") &&  sArr.contains("배")){ // 자바는  and가 &&
			System.out.println("있습니다.");
		}else {
			System.out.println("없습니다.");
		}
		
		// 가게에 물건이 모두 없나요?
		// 배열 리스트가 비어있나요? isEmpty()
		// 가게에 물건이 있으면 모두 치워주세요. -> 물건이 있으면 모두 지우기
		if (!sArr.isEmpty()) {
			sArr.clear(); //요소 다 지우기
			System.out.println("가게 물건을 모두 치웠습니다.");
		}
		
		for (int i=0; i <arrList.size(); i++) { 
			System.out.println(sArr.get(i));}
		
		
	}


}
