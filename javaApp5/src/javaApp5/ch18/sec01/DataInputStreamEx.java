package javaApp5.ch18.sec01;

import java.io.*;

public class DataInputStreamEx {

	public static void main(String[] args) {
		// 기본 타입으로 입출력하는 도와주는 보조 스트림
		
		try {
			OutputStream os = new FileOutputStream("D:/AI/study/java study/data/p.db");
			DataOutputStream dos=new DataOutputStream(os);
			
			dos.writeUTF("홍길동"); // 한글 문자로 출력하고 싶을 때 
			dos.writeDouble(95.5);
			dos.writeInt(1);
			
			dos.writeUTF("김자바");
			dos.writeDouble(90.3);
			dos.writeInt(2);
			
			dos.flush();
			dos.close();
			
			InputStream is = new FileInputStream("D:/AI/study/java study/data/p.db");
			BufferedInputStream bis	=new BufferedInputStream(is);
			DataInputStream dis=new DataInputStream(bis);
			
			//홍길동 출력하기
			String name =dis.readUTF();
			double score	=dis.readDouble();
			int no = dis.readInt();
			System.out.println(name+" "+score+" "+no);
			
			// 김자바 출력하기 -> 위에 이미 선언했으니까 앞에 타입은 생략
			name =dis.readUTF();
			score	=dis.readDouble();
			no = dis.readInt();
			System.out.println(name+" "+score+" "+no);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
