package kr.or.kmart.A;

public class User {
	//회원관리 클래스(틀)
	//전역변수(global variable) 
	// = 필드 = 맴버 = 맴버필드 = 프로퍼티(property)
	String uid; //String data type으로 uid 변수선언
	String upw;
	String uphone;	
	char us;
	int uage;	
	String ulevel;
	
	public static int sum(int one, int two){
		System.out.println("첫번째 값 : "+one);
		System.out.println("두번째 값 : "+two);
		int hap = one + two;
		System.out.println("합 :  "+hap);
		return 1;
	}	


	
}
