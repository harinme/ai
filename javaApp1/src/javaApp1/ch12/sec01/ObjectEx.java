package javaApp1.ch12.sec01;

public class ObjectEx extends Object{ // extends Object 생략되어있었음.

	public static void main(String[] args) {
		// object 메소드는 모든 클래스들이 다 쓸 수 있다. 재정의 할 수 있다.

		Member obj1 = new Member("blue");
		Member obj2 = new Member("blue");
		Member obj3 = new Member("red");
		
		if (obj1 ==obj2) {
			System.out.println("같다");
			
		}else {
			System.out.println("다르다");
		}
		
		if (obj1.equals(obj2)) {// obj1의 주소값과 obj2의 주소값을 비교한다.
			System.out.println("같다");
			
		}else {
			System.out.println("다르다");
		}
	}

}

class Member {
	public String id;
	public String pwd;
	public String name;
	//id가 같고 pwd 같으면 같은 사람으로 할 것이다.
	
	public Member(String id) {
		this.id = id;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Member) {
			Member m = (Member) obj;
			if(this.id.equals(m.id)) {
				return true;
			}
			
		// TODO Auto-generated method stub
	
		}
		return false;
	}
	
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
}