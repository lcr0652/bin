package kr.or.kmart.A;

public class Member {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		m_insert("��������");
		m_insert("��������","dd");
		m_insert("��������","asdf","asdff");
		m_insert("��������","asdf",1);
	}
	
	
	
	
	//�ϳ��� Ŭ�������� �޼��� �̸��� �����ϰ� �Ű����� ������ data type�� �ٸ��� ���α׷��� �ϴ¹�� = �޼��� �����ε�(?)
	//ȸ�������Ѵ� �޼��� ����
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
