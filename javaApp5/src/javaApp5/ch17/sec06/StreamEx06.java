package javaApp5.ch17.sec06;

import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

public class StreamEx06 {

	public static void main(String[] args) {
		// 루핑- 반복해서 하나씩 가져와서 처리하는 것을 의미함
		// 매칭- 조건의 충족 여부를 조사하는 최종처리기능
		
		int[] intArr = {2,4,6,  7};
		
		boolean result=
			Arrays.stream(	intArr)
					.allMatch(i-> i % 2 == 0 ); //모두 다 충족는지 //  boolean test(int value);
//					.peek(n->System.out.println(n)) //넘어온 true/false를 받음 //peek는 중간처리이기 때문에 최종 처리 스트림을 안 해주면 error
//					.sum();
		
		System.out.println(result);
		/////////////
		result=
				Arrays.stream(	intArr)
				   	  .anyMatch(i-> i % 2 == 0 ); //하나만이라도 충족는지 -> 1개라도 참이면 true
			System.out.println(result);
			
			///////////
			result=
					Arrays.stream(	intArr)
						  .noneMatch(i-> i % 2 == 0 ); //무엇도 충족 안해야함. -> 모두 거짓이면 true
				System.out.println(result);
				
				
		int[] intArr2 = {1,2,3,4,5};
		
		long count=
		Arrays.stream(intArr2)
			  .filter(n->n%2 ==0)
			  .count();
		
		System.out.println("짝수의 개수는?" + count);

		//홀수의 총합을 구하기
		int oddSum=
				
		Arrays.stream(intArr2)
		  .filter(n->n%2 !=0)
		  .sum();
	
	System.out.println("홀수의 합은?" + oddSum);
		
		
	}

}
