package kr.or.kmart.A;

public class User {
	//ȸ������ Ŭ����(Ʋ)
	//��������(global variable) 
	// = �ʵ� = �ɹ� = �ɹ��ʵ� = ������Ƽ(property)
	String uid; //String data type���� uid ��������
	String upw;
	String uphone;	
	char us;
	int uage;	
	String ulevel;
	
	public static int sum(int one, int two){
		System.out.println("ù��° �� : "+one);
		System.out.println("�ι�° �� : "+two);
		int hap = one + two;
		System.out.println("�� :  "+hap);
		return 1;
	}	


	
}
