package javaApp3.ch13.sec01;

public class GenericEx {

	public static void main(String[] args) {
		// ���ʸ��̶�? ���߿� ���� ���ϴ°�
		Box<Integer> intBox = new Box<Integer>();
		intBox.content = 100;
//		intBox.content = "ȫ�浿"; <Integer>  �ش� �ڽ��� ������ �ʴ� �ڷ� ���� ���� ���� 
		Box<String> strBox = new Box<String>();
		strBox.content="ȫ�浿";
//		strBox.content=12.5; <String>  �ش� �ڽ��� ������ �ʴ� �ڷ� ���� ���� ���� 
		
		BoxChild<Integer, String>	bc = new BoxChild<Integer, String>();
		bc.content=10;
		bc.kind="aaa";
		
		InterImpl<Double> iti = new InterImpl<Double>(); //<A>-><Double>
		
		InterImpl<Boolean> iti2 = new InterImpl<Boolean>();//<A>-><Boolean>
	}

}
class Box<T>{ //<T>�� �ǹ� ������ �������ֱ� ���ؼ� ���  T-type ���ĺ� �ƹ��ų� ��� ����  
	T content; // ������ ���� ���� ����, ���ڿ�, ��ü �� ���� �������� �ʾұ� ������ ���� ���� object�� ����(�׷��� �ڽ��� �ٸ� �� ���� �������.)
}

class BoxChild<T, K> extends Box<T>{// �θ� ���׸��� �ִٸ� �ڽĵ� �־�� �� - ���׸�<> , �ڽ� ������ ���׸� �߰��� ���� ���� ����.
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