package javaBasic5.ch08.sec04;

public class DaoExample {
public static void dbWork(DataAccessObject dao) {
	dao.select();
	dao.insert();
	dao.update();
	dao.delete();
}
	
	
	
	public static void main(String[] args) {
	dbWork (new OracleDao());
	dbWork (new MysqlDao());

	}

}

interface DataAccessObject {
	void select();
	void insert();
	void update();
	void delete();
	
}
class OracleDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("Oracla DB에서 검색");
	}

	@Override
	public void insert() {
		System.out.println("Oracla DB에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("Oracla DB에서 수정");
		
	}

	@Override
	public void delete() {
		System.out.println("Oracla DB에서 삭제");
		
	}
	
}

class MysqlDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("Mysql DB에서 검색");
	}

	@Override
	public void insert() {
		System.out.println("Mysql DB에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("Mysql DB에서 수정");
		
	}

	@Override
	public void delete() {
		System.out.println("Mysql DB에서 삭제");
		
	}
	
}