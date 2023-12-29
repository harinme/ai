package javaApp5.ch17.sec03;

import java.util.*;

public class StreamEx03 {

	public static void main(String[] args) {
		// �߰� ��Ʈ�� ������
		List<String> list1 = new ArrayList<>();
		list1.add("this is java");
		list1.add("i am a best developer");
		
//		String a = "this is java";
//		String[] as = a.split(" "); // String �迭�� ���´�
//		for (String s:as){
//			
//			System.out.println(s);
//		}
		
		
		// ������ �־ " "���� �� �κ��� �߶� �ܾ ����ϱ�
		list1.stream()
			 .flatMap(s-> Arrays.stream(s.split(" ")))
			 .forEach(p->System.out.println(p));
		
		List<String> list2	=Arrays.asList("    10 ,20,  30", "40,  50");
		
		int result= 
				list2.stream()
					 .flatMapToInt(t->{ 
				 				String[] ss =	t.split(",");
				 				int[] intArr = new int[ss.length];
				 				for(int i=0; i<ss.length; i++) {
				 					// "   30   " -> trim() -> "30" -> Integer.parseInt -> 30
				 				intArr[i]	=Integer.parseInt(ss[i].trim());
				 				}
				 				return Arrays.stream(intArr);
				 				
			 })
//			 .forEach(p->System.out.println(p));
			 .sum();
				System.out.println(result);
				
				
				List<String> list3	=Arrays.asList("    10.5 ,20.7,  30.9  ", "40.1,  50.7");
				
				double result3= 
						list3.stream()
							 .flatMapToDouble(t->{ 
						 				String[] ss =	t.split(",");
						 				double[]doubleArr = new double[ss.length];
						 				for(int i=0; i<ss.length; i++) {
						 					// "   30   " -> trim() -> "30" -> Integer.parseInt -> 30
						 					doubleArr[i]	=Double.parseDouble(ss[i].trim());
						 				}
						 				return Arrays.stream(doubleArr);
						 				
					 })
//					 .forEach(p->System.out.println(p));
					 .sum();
						System.out.println(result3);
		
	}
	
	

}
