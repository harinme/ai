package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		// String ��ü set �ֱ�
		// ���� ����: ��� �� �� �ٳ��� ��� ��
		//set ��ҷ� �ֱ�
		//set�� ���� Ŭ���� HashSet, TreeSet
		Set<String> set = new HashSet<String>(); // ctrl+shift+ o(����) - import �ڵ����� ��Ŵ
		set.add("���");
		set.add("��");
		set.add("��");
		set.add("�ٳ���");
		set.add("���");
		set.add("��");
		

		// set �ȿ� ��� ���� ���ϱ�
		System.out.println(set.size());
		
		//"�޷� �Ⱦƿ�? contains()
		System.out.println(set.contains("�޷�"));
		
		// set �ȿ� �ִ� �� ����ϱ�
		Iterator<String> it = set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		// set �ȿ� �ִ� ��� ��� �����ϱ�
		set.clear();
			System.out.println(set);
		}
	

}
