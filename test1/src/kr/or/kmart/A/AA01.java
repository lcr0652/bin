package kr.or.kmart.A;

public class AA01 {

	public static void main(String[] args) {
		User u01 = new User();
		User u02 = new User();
		User u03 = new User();
		User u04 = new User();
		System.out.println(u01+ "<--u01");
				
		
//id001	pw001	010-0001	��	20	������
		u01.uid = "id001";
		u01.upw = "pw001";
		u01.uphone = "010-0001";
		u01.us = '��';
		u01.uage = 20;
		u01.ulevel = "������";
		u_print(u01);
		
		
//id002	pw002	010-0002	��	30	�Ǹ���
		u02.uid = "id002";
		u02.upw = "pw002";
		u02.uphone = "010-0002";
		u02.us = '��';
		u02.uage = 30;
		u02.ulevel = "������";
		u_print(u02);
		
		
		
//id003	pw003	010-0003	��	31	�Ǹ���
		u03.uid = "id003";
		u03.upw = "pw003";
		u03.uphone = "010-0003";
		u03.us = '��';
		u03.uage = 31;
		u03.ulevel = "�Ǹ���";
		u_print(u03);
		
		
//id004	pw004	010-0004	��	32	������
		u04.uid = "id004";
		u04.upw = "pw004";
		u04.uphone = "010-0004";
		u04.us = '��';
		u04.uage = 32;
		u04.ulevel = "������";
		u_print(u04);
		
		
		//p001	id002	��Ʈ��	2000000	1000000	SW���߿�
		Goods g01 = new Goods();
		g01.pcode = "p001";
		g01.uid = u02.uid;
		g01.pname = "��Ʈ��";
		g01.pjungsang = 2000000;
		g01.phalin = 1000000;
		g01.psangse = "SW���߿�";
		g_print(g01);

		// p002	id003	��ǳ��	50000	40000	�ÿ���
		Goods g02 = new Goods();
		g02.pcode = "p002";
		g02.uid = u03.uid;
		g02.pname = "��ǳ��";
		g02.pjungsang = 50000;
		g02.phalin = 40000;
		g02.psangse = "�ÿ���";
		g_print(g02);
		
		//p003	id004	����ڽ�	100000	80000	SW���߿�
		Goods g03 = new Goods();
		g03.pcode = "p003";
		g03.uid = u04.uid;
		g03.pname = "����ڽ�";
		g03.pjungsang = 100000;
		g03.phalin = 80000;
		g03.psangse = "SW���߿�";
		g_print(g03);
		
//�ֹ����� o001	p001	id001	3	2000000	6000000	�ݾϵ�
		Order o01 = new Order();
		o01.ocode = "o001";
		o01.pcode = g01.pcode;
		o01.uid = u01.uid;
		o01.ocount = 3;
		o01.oprice = g01.pjungsang;
		o01.ototal = o01.ocount * o01.oprice ;
		o01.oaddress = "�ݾϵ�";
		o_print(o01);

//�ֹ�����2 o002	p002	id001	5	50000	250000	���ŵ�
		Order o02 = new Order();
		o02.ocode = "o002";
		o02.pcode = g02.pcode;
		o02.uid = u01.uid;
		o02.ocount = 5;
		o02.oprice = g02.pjungsang;
		o02.ototal = o02.ocount*o02.oprice;
		o02.oaddress = "���ŵ�";
		o_print(o02);
		
//�ֹ�����3 o003	p002	id001	2	50000	100000	������
		Order o03 = new Order();
		o03.ocode = "o003";
		o03.pcode = g03.pcode;
		o03.uid = u01.uid;
		o03.ocount = 2;
		o03.oprice = g03.pjungsang;
		o03.ototal = o03.ocount*o03.oprice;
		o03.oaddress = "������";
		o_print(o03);		
		
		
	}
	
	//�ֹ����� ��� �޼��� ����
	
	public static void o_print(Order geto){
		System.out.println("     ");
		System.out.println("�ֹ����� ��½���---");
		System.out.println("�ֹ� �ڵ� :  "+geto.ocode);
		System.out.println("��ǰ�ڵ� :   "+geto.pcode);
		System.out.println("�ֹ����̵� :   "+geto.uid);
		System.out.println("���ż��� :   "+geto.ocount);
		System.out.println("���Ŵܰ� :   "+geto.oprice);
		System.out.println("���������ݾ� :   "+geto.ototal);
		System.out.println("�޴� �ּ�:   "+geto.oaddress);
		System.out.println("��ǰ��³�----");
		System.out.println("     ");
	}
	
	//��ǰ ��� �޼��� ����
	public static void g_print(Goods getg){
		System.out.println("     ");
		System.out.println("��ǰ��½���---");
		System.out.println("��ǰ �ڵ� :  "+getg.pcode);
		System.out.println("�Ǹ��� ���̵� :   "+getg.uid);
		System.out.println("��ǰ�� :   "+getg.pname);
		System.out.println("���� :   "+getg.pjungsang);
		System.out.println("���ΰ� :   "+getg.phalin);
		System.out.println("�� ���� :   "+getg.psangse);
		System.out.println("��ǰ��³�----");
		System.out.println("     ");
	}
	//ȸ�� ��� �޼��� ����
	//						int getu = 10;
	// 					User get u = kr.or.kmart.A.User@1db9742
	public static void u_print(User getu){
		System.out.println("     ");
		System.out.println("ȸ����� ���� ----");
		System.out.println("���̵� :  "+getu.uid);
		System.out.println("��й�ȣ :  "+getu.upw);
		System.out.println("��ȭ��ȣ :  "+getu.uphone);
		System.out.println("���� :  "+getu.us);
		System.out.println("���� :  "+getu.uage);
		System.out.println("���� :  "+getu.ulevel);
		System.out.println("ȸ����� �� -----");
		System.out.println("     ");
		
	}

}
