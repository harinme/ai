package javaApp5.ch18.sec01;

import java.io.*; // *�� ��� ���� �ǹ�
 
public class ReaderEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			char[] cArr = new char[100];
			Reader r = new FileReader("D:/AI/study/java study/data/test3.txt");
			while (true) {
				int data =r.read();
				if (data== -1) break;
				for (int i=0; i<data; i++) {
					System.out.println( (char) cArr[i]); //�����͸� ����ϱ�
				}
		
			}
			r.close();
				Writer w = new FileWriter("D:/AI/study/java study/data/test4.txt");
				
				w.write("abcdef");
				w.write(65); // 65�� �����ڵ��  �빮�� A //800�� �����ڵ�� ?
				
				w.flush();
				w.close();
				
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
