package javaApp1;

import java.lang.module.ModuleDescriptor;
import java.util.Date;
import java.util.Scanner;
import java.util.StringTokenizer;

public class App1Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		String a = "abcde";
		int aHashCode = a.hashCode();
		System.out.println(aHashCode );
		double pi = Math.PI;
		System.out.println(pi );
		double e = Math.E;
		System.out.println(e );
		Math.abs(30);
		System.out.println(Math.abs(3.14) );
		Date date = new Date();
		System.out.println(date );
		int date1 = date.getDate();
		long time1 = date.getTime()	;
		System.out.println(time1 );
		long date2 = Date.parse("2023/12/19");
		System.out.println(date2 );
		String text="ab/cd/ef";
		StringTokenizer st =new StringTokenizer("ab/cd/ef","/");
		int count = st.countTokens();
		System.out.println(count );
		String token1 = st.nextToken();
		System.out.println(token1 );
		token1 = st.nextToken();
		System.out.println(token1 );
		token1 = st.nextToken();
		System.out.println(token1 );
		
		
//		ModuleDescriptor md =new ModuleDescriptor(); //

		
		
		//496 
		//byte ±âº»Çü
		Byte b =10;
		}

}
