package javaApp5.ch18.sec01;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public class ObjectStreamEx {

	public static void main(String[] args) {
		// Member 클래스의 형태를 스트림으로 만들어서 외부로 보내기
		try {
			OutputStream os	=	new FileOutputStream("D:/AI/study/java study/data/member.dat");
			BufferedOutputStream bos = new BufferedOutputStream(os);
			ObjectOutputStream oos	=new ObjectOutputStream(bos); //객체를 스트림으로 만들기
			// ObjectOutputStream을 하려면 Member 객체를 implements Serializable 를 해야한다.
			
			Member m1 = new Member("fall","단풍이",10);
			
			oos.writeObject(m1);
			oos.flush();
			oos.close();
			
			//외부 파일 읽기
			InputStream is	=	new FileInputStream("D:/AI/study/java study/data/member.dat");
			// 성능(속도)를 향상 시키기
			BufferedInputStream bis = new BufferedInputStream(is);
			// 스트림을 객체로 만들기
			ObjectInputStream ois	=new ObjectInputStream(bis);
			// 읽어오기
			Member im = (Member) ois.readObject();
			// 출력하기
			System.out.println(im);
			
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
class Member implements Serializable{
	
	String id;
	String name;
	int age;
	
	public Member(String id, String name, int age) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id+" "+name+" " + age;
	}
}