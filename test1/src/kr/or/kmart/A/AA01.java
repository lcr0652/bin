package kr.or.kmart.A;

public class AA01 {

	public static void main(String[] args) {
		User u01 = new User();
		User u02 = new User();
		User u03 = new User();
		User u04 = new User();
		System.out.println(u01+ "<--u01");
				
		
//id001	pw001	010-0001	남	20	구매자
		u01.uid = "id001";
		u01.upw = "pw001";
		u01.uphone = "010-0001";
		u01.us = '남';
		u01.uage = 20;
		u01.ulevel = "구매자";
		u_print(u01);
		
		
//id002	pw002	010-0002	여	30	판매자
		u02.uid = "id002";
		u02.upw = "pw002";
		u02.uphone = "010-0002";
		u02.us = '여';
		u02.uage = 30;
		u02.ulevel = "구매자";
		u_print(u02);
		
		
		
//id003	pw003	010-0003	여	31	판매자
		u03.uid = "id003";
		u03.upw = "pw003";
		u03.uphone = "010-0003";
		u03.us = '여';
		u03.uage = 31;
		u03.ulevel = "판매자";
		u_print(u03);
		
		
//id004	pw004	010-0004	여	32	관리자
		u04.uid = "id004";
		u04.upw = "pw004";
		u04.uphone = "010-0004";
		u04.us = '여';
		u04.uage = 32;
		u04.ulevel = "관리자";
		u_print(u04);
		
		
		//p001	id002	노트북	2000000	1000000	SW개발용
		Goods g01 = new Goods();
		g01.pcode = "p001";
		g01.uid = u02.uid;
		g01.pname = "노트북";
		g01.pjungsang = 2000000;
		g01.phalin = 1000000;
		g01.psangse = "SW개발용";
		g_print(g01);

		// p002	id003	선풍기	50000	40000	시원해
		Goods g02 = new Goods();
		g02.pcode = "p002";
		g02.uid = u03.uid;
		g02.pname = "선풍기";
		g02.pjungsang = 50000;
		g02.phalin = 40000;
		g02.psangse = "시원해";
		g_print(g02);
		
		//p003	id004	사과박스	100000	80000	SW개발용
		Goods g03 = new Goods();
		g03.pcode = "p003";
		g03.uid = u04.uid;
		g03.pname = "사과박스";
		g03.pjungsang = 100000;
		g03.phalin = 80000;
		g03.psangse = "SW개발용";
		g_print(g03);
		
//주문관리 o001	p001	id001	3	2000000	6000000	금암동
		Order o01 = new Order();
		o01.ocode = "o001";
		o01.pcode = g01.pcode;
		o01.uid = u01.uid;
		o01.ocount = 3;
		o01.oprice = g01.pjungsang;
		o01.ototal = o01.ocount * o01.oprice ;
		o01.oaddress = "금암동";
		o_print(o01);

//주문관리2 o002	p002	id001	5	50000	250000	서신동
		Order o02 = new Order();
		o02.ocode = "o002";
		o02.pcode = g02.pcode;
		o02.uid = u01.uid;
		o02.ocount = 5;
		o02.oprice = g02.pjungsang;
		o02.ototal = o02.ocount*o02.oprice;
		o02.oaddress = "서신동";
		o_print(o02);
		
//주문관리3 o003	p002	id001	2	50000	100000	덕진동
		Order o03 = new Order();
		o03.ocode = "o003";
		o03.pcode = g03.pcode;
		o03.uid = u01.uid;
		o03.ocount = 2;
		o03.oprice = g03.pjungsang;
		o03.ototal = o03.ocount*o03.oprice;
		o03.oaddress = "덕진동";
		o_print(o03);		
		
		
	}
	
	//주문관리 출력 메서드 선언
	
	public static void o_print(Order geto){
		System.out.println("     ");
		System.out.println("주문관리 출력시작---");
		System.out.println("주문 코드 :  "+geto.ocode);
		System.out.println("상품코드 :   "+geto.pcode);
		System.out.println("주문아이디 :   "+geto.uid);
		System.out.println("구매수량 :   "+geto.ocount);
		System.out.println("구매단가 :   "+geto.oprice);
		System.out.println("결제예정금액 :   "+geto.ototal);
		System.out.println("받는 주소:   "+geto.oaddress);
		System.out.println("상품출력끝----");
		System.out.println("     ");
	}
	
	//상품 출력 메서드 선언
	public static void g_print(Goods getg){
		System.out.println("     ");
		System.out.println("상품출력시작---");
		System.out.println("상품 코드 :  "+getg.pcode);
		System.out.println("판매자 아이디 :   "+getg.uid);
		System.out.println("상품명 :   "+getg.pname);
		System.out.println("정상가 :   "+getg.pjungsang);
		System.out.println("할인가 :   "+getg.phalin);
		System.out.println("상세 설명 :   "+getg.psangse);
		System.out.println("상품출력끝----");
		System.out.println("     ");
	}
	//회원 출력 메서드 선언
	//						int getu = 10;
	// 					User get u = kr.or.kmart.A.User@1db9742
	public static void u_print(User getu){
		System.out.println("     ");
		System.out.println("회원출력 시작 ----");
		System.out.println("아이디 :  "+getu.uid);
		System.out.println("비밀번호 :  "+getu.upw);
		System.out.println("전화번호 :  "+getu.uphone);
		System.out.println("성별 :  "+getu.us);
		System.out.println("나이 :  "+getu.uage);
		System.out.println("권한 :  "+getu.ulevel);
		System.out.println("회원출력 끝 -----");
		System.out.println("     ");
		
	}

}
