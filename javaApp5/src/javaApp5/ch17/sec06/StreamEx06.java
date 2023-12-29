package javaApp5.ch17.sec06;

import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

public class StreamEx06 {

	public static void main(String[] args) {
		// ����- �ݺ��ؼ� �ϳ��� �����ͼ� ó���ϴ� ���� �ǹ���
		// ��Ī- ������ ���� ���θ� �����ϴ� ����ó�����
		
		int[] intArr = {2,4,6,  7};
		
		boolean result=
			Arrays.stream(	intArr)
					.allMatch(i-> i % 2 == 0 ); //��� �� �������� //  boolean test(int value);
//					.peek(n->System.out.println(n)) //�Ѿ�� true/false�� ���� //peek�� �߰�ó���̱� ������ ���� ó�� ��Ʈ���� �� ���ָ� error
//					.sum();
		
		System.out.println(result);
		/////////////
		result=
				Arrays.stream(	intArr)
				   	  .anyMatch(i-> i % 2 == 0 ); //�ϳ����̶� �������� -> 1���� ���̸� true
			System.out.println(result);
			
			///////////
			result=
					Arrays.stream(	intArr)
						  .noneMatch(i-> i % 2 == 0 ); //������ ���� ���ؾ���. -> ��� �����̸� true
				System.out.println(result);
				
				
		int[] intArr2 = {1,2,3,4,5};
		
		long count=
		Arrays.stream(intArr2)
			  .filter(n->n%2 ==0)
			  .count();
		
		System.out.println("¦���� ������?" + count);

		//Ȧ���� ������ ���ϱ�
		int oddSum=
				
		Arrays.stream(intArr2)
		  .filter(n->n%2 !=0)
		  .sum();
	
	System.out.println("Ȧ���� ����?" + oddSum);
		
		
	}

}
