package kr.or.kmart.A;

public class Lcr2 {

	public static void main(String[] args) {
		
		Lcr u01 = new Lcr();
		u01.test1 = 10;
		u01.test2 = 20;
		u01.test3 = "실험입니다.";
		
		System.out.println(u01.test1+ "         <--test1 값  ");
		System.out.println(u01.test2+ "         <--test2 값  ");
		System.out.println(u01.test3+ "         <--test3 값  ");
		System.out.println("주소값 : "+u01);
		System.out.println("                     ");
		System.out.println("    ----계산기----       ");
		
		
		
		double a = u01.cal(10.15,"*",442);
		if(a==1){

		}else if(a==0){
			System.out.println("+,-,*,/ 중에 하나를 입력해주세요.");
		}

	}

}
