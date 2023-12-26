package javaApp1.ch12.sec05;

import java.io.IOException;
import java.util.Properties;

public class PropertiseEx {

	public static void main(String[] args) throws IOException {
		// 663p
		Properties properties	=new Properties();

		properties.load(PropertiseEx.class.getResourceAsStream("database.properties"));
		
		properties.getProperty("driver");
	}

}
