package kr.or.kmart.A;

public class Lcr2 {

	public static void main(String[] args) {
		
		Lcr u01 = new Lcr();
		u01.test1 = 10;
		u01.test2 = 20;
		u01.test3 = "�����Դϴ�.";
		
		System.out.println(u01.test1+ "         <--test1 ��  ");
		System.out.println(u01.test2+ "         <--test2 ��  ");
		System.out.println(u01.test3+ "         <--test3 ��  ");
		System.out.println("�ּҰ� : "+u01);
		System.out.println("                     ");
		System.out.println("    ----����----       ");
		
		
		
		double a = u01.cal(10.15,"*",442);
		if(a==1){

		}else if(a==0){
			System.out.println("+,-,*,/ �߿� �ϳ��� �Է����ּ���.");
		}

	}

}
