package kr.or.kmart.A;

public class Lcr {
	
	int test1 = 0;
	double test2 = 0;
	String test3 = "";
	
	
	
	
	public static int cal(double one, String oper, double two){
		int re = 0;
		System.out.println("ù��° �Է� �� : "+one+"    �Է��� ��ȣ : "+oper+"    �ι�° �Է� ��  : "+two);
		if(oper.equals("+")){
			System.out.println(one+two);
			
			re = 1;
		}
		else if(oper.equals("-")){
			System.out.println(one-two);
			
			re = 1;
		}
		else if(oper.equals("*")){
			System.out.println(one*two);
			
			re = 1;
		}
		else if(oper.equals("/")){
			System.out.println(one/two);
			
			re = 1;
		}
		else{
			re = 0;
		}
		
	
		return re;
	}

}
