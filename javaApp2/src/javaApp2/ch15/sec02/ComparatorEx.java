package javaApp2.ch15.sec02;

import java.util.Comparator;
import java.util.TreeSet;

public class ComparatorEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Fruit f1	=new Fruit("����", 3000);
		Fruit f2	=new Fruit("����", 10000);
		Fruit f3	=new Fruit("����", 6000);
//		TreeSet<Fruit> ts =new TreeSet<Fruit>();
		TreeSet<Fruit> ts	=new TreeSet<Fruit>(new Fruitcom());
		ts.add(f1);
		ts.add(f2);
		ts.add(f3);
		// �̴�� �����ϸ� Ʈ������ ���� ������ �޾����� �ʾƼ� ������ ��. �׷��� implements ���־�� ��.
		
		for (Fruit t:ts) {
			System.out.println(t.name+" "+t.price);
		// ���Ⱑ ���̶� ���� ���(����- �Ѹ�-������)
		// ���ݼ��� ���� �������
		}
		
	}

}

// ���� ��ü
class Fruit {//implements Comparable{ //�ܺο��� ������ �� ���α׷��̶� ������ �Ұ��ϴٸ� comparable �� ��� ����.
	String name;// ���� ��
	Integer price; // ���� ����
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
//		// o1 Ʈ���� �޷� �ִ� �ڷ� - ����, o2 Ʈ���� �޾��� �ڷ� - ����
//		return o1.name.compareTo(o2.name);
	// ���ϸ� ������ Ʈ���� �޾���
@Override
public int compare(Fruit o1, Fruit o2) {
	// TODO Auto-generated method stub
	return o1.price.compareTo(o2.price);
}
}
	
