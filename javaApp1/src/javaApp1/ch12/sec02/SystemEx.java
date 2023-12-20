package javaApp1.ch12.sec02;

import java.io.IOException;

public class SystemEx {

	public static void main(String[] args) {
		
		System.err.println("에러 부분 출력 빨간색으로");
		System.out.println(System.getProperty("os.name"));
		System.out.println(System.getProperty("user.name"));
		System.out.println(System.getProperty("user.home"));
		System.out.println(System.getProperty("user.dir"));
		System.out.println(System.getProperty("java.home"));
		
		System.out.println(System.currentTimeMillis()); //밀리 초(1/1000초) 단위로 현재 시간 구함
		System.out.println(System.nanoTime()); // 나노 초 1/10^9
		try {
			int aa = System.in.read();
			System.out.println(aa);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.exit(0); //프로세스 종료
	}

}
