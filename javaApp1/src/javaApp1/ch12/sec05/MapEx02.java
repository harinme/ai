package javaApp1.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class MapEx02 {

	public static void main(String[] args) {
		// map

		Member m1 = new Member ("a100", 123);
		Member m2 = new Member ("a200", 234);
		Member m3 = new Member ("a300", 345);
		//map Ű�� 1 ���� m1
		HashMap<Integer, Member> hmap	=new HashMap<Integer, Member>();
		//������ �Է��ϱ�
		hmap.put(1,m1);
		hmap.put(2,m2);
		hmap.put(3,m3);
		//" a300", 345 ����ϱ�
		System.out.println(hmap.get(3));
		// Ű�鸸 ����ϱ�
		System.out.println(hmap.keySet());
		Set<Integer> keys = hmap.keySet();
		Iterator<Integer> it = keys.iterator();
		while (it.hasNext()) {
			Integer itkey= it.next();
			System.out.println(itkey + " "+hmap.get(itkey));
		}
		
		//map ���� Ű - id �� pwd
//		Member m1 = new Member ("a100", 123);
//		Member m2 = new Member ("a200", 234);
//		Member m3 = new Member ("a300", 345);
		HashMap<String, Integer> hmap2 = new HashMap<String, Integer>();
		hmap2.put(m1.id, m1.pwd);
		hmap2.put(m2.id, m2.pwd);
		hmap2.put(m1.id, m1.pwd);
		
		//a100�� �� pwd��?
		System.out.println(hmap2.get(m1.id));
		Member m4 = new Member ("a300", 345);
		hmap2.put(m4.id, m4.pwd);
		
		Member m5 = new Member ("a300", 346);
		hmap2.put(m5.id, m5.pwd);
		System.out.println(hmap2.size());
		// ���ü�� id�� pwd �� �� �� ���� ��
//		Set<Member> keys1= hmap2.keySet();
//		Iterator<Member> k1 = keys1.iterator();
//		while (k1.hasNext()) {
//			System.out.println(k1.next());
//		}
		
	}

}

class Member {
	String id;
	Integer pwd;
	
	public Member(String id, Integer pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " " + pwd ;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return id.hashCode()+ pwd.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Member) {
			Member m = (Member) obj;
			if (id.equals(m.id)&& pwd==m.pwd);
		}
		return super.equals(obj);
	}
}
