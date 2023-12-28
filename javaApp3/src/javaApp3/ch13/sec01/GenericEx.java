package javaApp3.ch13.sec01;

public class GenericEx {

	public static void main(String[] args) {
		// 제너릭이란? 나중에 형을 정하는것
		Box<Integer> intBox = new Box<Integer>();
		intBox.content = 100;
//		intBox.content = "홍길동"; <Integer>  해당 박스에 원하지 않는 자료 들어가는 것을 방지 
		Box<String> strBox = new Box<String>();
		strBox.content="홍길동";
//		strBox.content=12.5; <String>  해당 박스에 원하지 않는 자료 들어가는 것을 방지 
		
		BoxChild<Integer, String>	bc = new BoxChild<Integer, String>();
		bc.content=10;
		bc.kind="aaa";
		
		InterImpl<Double> iti = new InterImpl<Double>(); //<A>-><Double>
		
		InterImpl<Boolean> iti2 = new InterImpl<Boolean>();//<A>-><Boolean>
	}

}
class Box<T>{ //<T>는 의미 없지만 구별해주기 위해서 사용  T-type 알파벳 아무거나 사용 가능  
	T content; // 내용을 담을 변수 정수, 문자열, 객체 등 아직 정해지지 않았기 때문에 제일 높은 object로 구현(그러면 박스에 다른 게 들어가도 상관없음.)
}

class BoxChild<T, K> extends Box<T>{// 부모가 제네릭이 있다면 자식도 있어야 함 - 제네릭<> , 자식 별도로 제네릭 추가로 가질 수도 있음.
	K kind;
	
}
interface Inter<A>{
	A method1();
}
class InterImpl<A> implements Inter<A>{

	@Override
	public A method1() {
		// TODO Auto-generated method stub
		return null;
	}
	
}