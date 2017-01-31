package kr.or.kmart.A;

public class Member {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		m_insert("ㅁㄴㅇㄹ");
		m_insert("ㅁㄴㅇㄹ","dd");
		m_insert("ㅁㄴㅇㄹ","asdf","asdff");
		m_insert("ㅁㄴㅇㄹ","asdf",1);
	}
	
	
	
	
	//하나의 클래스에서 메서드 이름이 동일하고 매개변수 갯수와 data type을 다르게 프로그래밍 하는방법 = 메서드 오버로딩(?)
	//회원가입한다 메서드 선언
	public static void m_insert(String id, String pw, int age){
		System.out.println("04");
	}	
	public static void m_insert(String id, String pw, String name){
		System.out.println("03");
	}
	public static void m_insert(String id, String pw){
		System.out.println("02");
	}
	public static void m_insert(String id){
		System.out.println("01");
	}
	
}
