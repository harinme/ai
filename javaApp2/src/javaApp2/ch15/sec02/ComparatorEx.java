package javaApp2.ch15.sec02;

import java.util.Comparator;
import java.util.TreeSet;

public class ComparatorEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Fruit f1	=new Fruit("포도", 3000);
		Fruit f2	=new Fruit("수박", 10000);
		Fruit f3	=new Fruit("딸기", 6000);
//		TreeSet<Fruit> ts =new TreeSet<Fruit>();
		TreeSet<Fruit> ts	=new TreeSet<Fruit>(new Fruitcom());
		ts.add(f1);
		ts.add(f2);
		ts.add(f3);
		// 이대로 실행하면 트리셋의 구분 조건을 달아주지 않아서 오류가 남. 그래서 implements 해주어야 함.
		
		for (Fruit t:ts) {
			System.out.println(t.name+" "+t.price);
		// 딸기가 ㄷ이라서 먼저 출력(왼쪽- 뿌리-오른쪽)
		// 가격순은 낮은 순서대로
		}
		
	}

}

// 과일 객체
class Fruit {//implements Comparable{ //외부에서 가지고 온 프로그램이라 수정이 불가하다면 comparable 을 사용 못함.
	String name;// 과일 명
	Integer price; // 과일 가격
	public Fruit(String name, Integer price) {
		super();
		this.name = name;
		this.price = price;
	}
//	@Override
//	public int compareTo(Object o) {
//		// TODO Auto-generated method stub
//		return name.compareTo(o.name);
//	}

	
	
}
class Fruitcom implements Comparator<Fruit>{

//	@Override
//	public int compare(Fruit o1, Fruit o2) {
//		// o1 트리에 달려 있는 자료 - 포도, o2 트리에 달아줄 자료 - 수박
//		return o1.name.compareTo(o2.name);
	// 과일명 순으로 트리에 달아줌
@Override
public int compare(Fruit o1, Fruit o2) {
	// TODO Auto-generated method stub
	return o1.price.compareTo(o2.price);
}
}
	
