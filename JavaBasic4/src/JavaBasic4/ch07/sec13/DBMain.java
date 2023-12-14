package JavaBasic4.ch07.sec13;

public class DBMain {

	public static void main(String[] args) {

//	Connect myConnect = new Connect();
//		// TODO Auto-generated method stub
////오라클
//		myConnect.db = new Oracle();
//		myConnect.dbRun();
//		
//		//MySql
//		myConnect.db = new MySql();
//		myConnect.dbRun();
//		//몽고
//	//	myConnect.db = new MongoDB();
//		//myConnect.dbRun();
		
	}

	class Connect{
		//필드 부모 타입 필드
		DB db;
		

		public void dbRun() {
			db.runDb();
			// TODO Auto-generated method stub
			
		}
	}
	
}
