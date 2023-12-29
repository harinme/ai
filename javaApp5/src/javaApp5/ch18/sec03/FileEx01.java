package javaApp5.ch18.sec03;

import java.io.*;

public class FileEx01 {

	public static void main(String[] args) throws Exception {
		//813 \\
		File dir=	new File("D:/AI/study/java study/data/abc/def");
		File file1 = new File("D:/AI/study/java study/data/file1.txt");
		File file2 = new File("D:/AI/study/java study/data/file2.txt");
		File file3 = new File("D:/AI/study/java study/data/file3.txt");
		
		if (dir.exists()==false) { dir.mkdirs();} // 해당 경로에 없는 폴더(디렉토리)를 모두 만들어준다. --.mkdirs() -> make  directors
		if(file1.exists()==false) {file1.createNewFile();};
		if(file2.exists()==false) {file2.createNewFile();};
		if(file3.exists()==false) {file3.createNewFile();};
		
		
	}

}
