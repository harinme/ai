package javaApp2;

import java.util.Vector;

public class VectorEx {

	public static void main(String[] args) {
		// ������ ���� ���� cpu�� ����ϸ鼭 ��Ƽ ���α׷��� �ϴ� ��
		// �ϳ����� �ϴ� �� ���� ó��/ ������ �ϴ� �� ��Ƽ ó��
		//vector �÷����� �������� �ڷḦ ��� ���� ����
		//�̿�о�: ������� ��Ƽ ���α׷����Ҷ� ������ �ְ� �ߺ������� �� �ִ� �ڷᱸ���� ã����
		
		Vector<Double> dArr = new Vector<Double>(); //double= �Ǽ�
		//10.4 8.8 9.4 3.7
		dArr.add(10.4);
		dArr.add(8.8);
		dArr.add(9.4);
		dArr.add(3.7);
		
		// 8.8 �ڿ� 7.9 �ֱ�
		dArr.add(2,7.9);
		// 3.7 �� �ֽ��ϱ�?
		if (dArr.contains(3.7)) {
			System.out.println("�ֽ��ϴ�");
		} else {
			System.out.println("�����ϴ�");
		}
		//10.4 �����ϱ�
		dArr.remove(0);
		// dArr.remove(10.4);
		
		// ��ü ����ϱ�
		for (int i=0; i <dArr.size(); i++) {
			System.out.println(dArr.get(i)+" ");
		}

	}

}
