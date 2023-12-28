package javaApp5.ch18.sec01;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ReaderEx01 {

	public static void main(String[] args) {
		// 입력 스트림
		try {
			InputStream is = new FileInputStream("D:\\AI\\study\\java study\\data\\cat.jpg");
			OutputStream os = new FileOutputStream("D:\\AI\\study\\java study\\data\\cat_copy.jpg");
			byte[] bArr = new byte[100]; // 100 바이트의 배열이 만들어짐
			byte[] wArr = new byte[100];
			while(true) {
				int data = is.read(bArr); //1 byte 읽는다
				if(data==-1) break; //-1은 데이터 끝이라는 의미
					os.write(data);		
			}
			os.flush();
			os.close();
			is.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
