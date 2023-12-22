package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx1 {

	public static void main(String[] args) {
		// 656p
		Map<Integer,String> m1 = new HashMap<Integer,String>();
		
		//����, �ֱ�
		m1.put(1,"�̼���");
		m1.put(2,"�ڼ���");
		m1.put(3,"ȫ�浿");
		m1.put(3,"ȫ�浿1");
		m1.put(3,"ȫ�浿2");
	
		//����ϱ�, ��������
		System.out.println(m1.get(3)); //Ű�� ������ ���� ���´� -> �� ���� Ű�� �������� ���� �ɷ� ����
		
		m1.remove(3);
		System.out.println(m1.get(3));
		
		
		// ��ü ����ϱ�
		//1�ܰ� Ű���� ������ keySet()
		//2�ܰ� Ű�� 1���� ����Ѵ�(�ݺ���)
		Set<Integer> m1Keys = m1.keySet(); // Ű���� ��´�.
		
		Iterator<Integer> i = m1Keys.iterator();
		while(i.hasNext()) {
//			System.out.println(i.next()+"@@@");// Ű ���
			System.out.println(m1.get(i.next())+"???"); //values  �� �μ�
		}
		
		Map<String,Double> m2 = new HashMap<String,Double>();
		//M2�� �� �ֱ�
		m2.put("a", 2.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 13.5);
		System.out.println(m2.get("b")+"~~");
		
		//ũ�� ���ϱ�
		System.out.println(m1.size()); //Ű�� �����ϸ� ���ü�� �Ǵ��ϰ� ���ο� ������ ��ü�Ѵ� -> �������� Ű ������ ���´�.

		Map<String, String> m3 = new HashMap<String, String>();
		m3.put("ȫ�浿","����");
		m3.put("�̼���","����");
		m3.put("�ְ��","���");
		m3.put("ȫ�浿","����");
		
		
		//ũ���? ȸ�� �ο�����?
		System.out.println(m3.size());
		//�̼����� ��å��?
		System.out.println(m3.get("�̼���"));
		// �ְ���� ��å��
		System.out.println(m3.get("�ְ��"));
		// ȫ�浿�� ��å��
		System.out.println(m3.get("ȫ�浿"));
		//�ְ�̰� ����ߴ� �����ϱ�
		m3.remove("�ְ��");
		
		//��ü ����ϱ�
		System.out.println(m3.get("ȫ�浿"));
		System.out.println(m3.get("�̼���"));
		
		
		//��ü ����Ϸ��� key�� �ݺ��ؼ� �־� �ָ� �ȴ�.
		//keySet() ��� Ű�� Set() ��´�.
		Set<String> m3Keys = m3.keySet(); // Ű���� ��´�.
		
		Iterator<String> it = m3Keys.iterator();
		while(it.hasNext()) {
//			System.out.println(it.next());//Ű ������ �ݺ��ؼ� ��µ�
			System.out.println(m3.get(it.next())+ "###");
		}
	}

}

