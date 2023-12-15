package javaBasic6.ch09.sec02;

public class SAExample {

	public static void main(String[] args) {
		AA a1 = new AA();
		System.out.println(a1.aa);

		System.out.println(AA.sa);
		
		System.out.println(AA.BB.bb);
		
		AA.BB aabb =new AA.BB();
		System.out.println(aabb.ibb);
		aabb.ibbM();
	}

}


class AA{
	int aa=20; // new를 사용할 수 있는 메소드
	void aaM() {
		
	}
	static int sa=10;
	static void saM() {
		
	}
	
	static class BB{
		
		static int bb=20;
		static void sbbM() {
	
		}

		int ibb =30;
		void ibbM() {
			ibb=ibb+40;
		}
		void bbM() {
			// aa=aa+20;
			// aaM(); //올라가는 시점이 달라서 불가능함.
			AA.saM();
			AA.sa=100;
		}
	}
}