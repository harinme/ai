package javaApp5.ch18.sec01;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ReaderEx01 {

	public static void main(String[] args) {
		// �Է� ��Ʈ��
		try {
			InputStream is = new FileInputStream("D:\\AI\\study\\java study\\data\\cat.jpg");
			OutputStream os = new FileOutputStream("D:\\AI\\study\\java study\\data\\cat_copy.jpg");
			byte[] bArr = new byte[100]; // 100 ����Ʈ�� �迭�� �������
			byte[] wArr = new byte[100];
			while(true) {
				int data = is.read(bArr); //1 byte �д´�
				if(data==-1) break; //-1�� ������ ���̶�� �ǹ�
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
