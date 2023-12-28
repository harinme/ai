package javaApp5.ch18.sec01;

import java.io.*; // *은 모든 것을 의미
 
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
					System.out.println( (char) cArr[i]); //데이터를 출력하기
				}
		
			}
			r.close();
				Writer w = new FileWriter("D:/AI/study/java study/data/test4.txt");
				
				w.write("abcdef");
				w.write(65); // 65는 유니코드로  대문자 A //800은 유니코드로 ?
				
				w.flush();
				w.close();
				
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
