package kr.or.kmart.A;

public class Homework_aa01 {

	public static void main(String[] args) {
		Homework_user u01 = new Homework_user();
		Homework_user u02 = new Homework_user();
		Homework_user u03 = new Homework_user();
		Homework_user u04 = new Homework_user();
		Homework_user u05 = new Homework_user();
	
	//���̵�, �̸�, ��й�ȣ, �й�, ����, ����� �Է��ϴ� ��Ȳ ����
		u01.id = "id01";
		u01.name = "�賭��";
		u01.pw = "4755";
		u01.num = 20161216;
		u01.hacjum = 4.5;
		u01.grade = "A+";
		
		u02.id = "id02";
		u02.name = "����Ŭ";
		u02.pw = "147852";
		u02.num = 20161217;
		u02.hacjum = 4.1;
		u02.grade = "A";
		
		u03.id = "id03";
		u03.name = "��Ŭ����";
		u03.pw = "zxcv1234";
		u03.num = 20161218;
		u03.hacjum = 1;
		u03.grade = "F";
		
		u04.id = "id04";
		u04.name = "ehsRktm";
		u04.pw = "4755";
		u04.num = 20161219;
		u04.hacjum = 3.2;
		u04.grade = "B";
		
		u05.id = "id05";
		u05.name = "Ŭ��";
		u05.pw = "159753";
		u05.num = 20161220;
		u05.hacjum = 2.8;
		u05.grade = "B-";
	
	//�Է¿ϷḦ ������ ������ ȭ�� ��� �޼���
		insert(u01);	
		
		
	//���̵�, �̸�, ��й�ȣ �Է��� �´��� Ȯ���ϰ� ���
		u01.id = "id02";
		u01.name="����Ŭ";
		u01.pw = "147852";
		check(u01);
		
		
	
	}
	public static void insert(Homework_user geti){
		System.out.println("==============================");
		System.out.println("������ �Է��ϼ̽��ϴ�.");
		System.out.println("���̵� : "+geti.id);
		System.out.println("�̸� : "+geti.name);
		System.out.println("��й�ȣ : "+geti.pw);
		System.out.println("�й� : "+geti.num);
		System.out.println("���� : "+geti.hacjum);
		System.out.println("��� : "+geti.grade);
		System.out.println("==============================");
		System.out.println("==========�����Է� Ȯ��============");	
		System.out.println("==============================");
	}
	
	
	
	//���̵�, �̸�, ��й�ȣ�� �´��� Ȯ���ϰ� ����ϴ� �޼���
	public static void check(Homework_user geta){

				//�����ͺ��̽�
				String dbid01 = "id01";
				String dbname01 = "�賭��";
				String dbpw01="4755";
				int dbnum01 = 20161216;
				double dbhacjum01 =4.5;
				String dbgrade01 = "A+";
				
				String dbid02 = "id02";
				String dbname02 = "����Ŭ";
				String dbpw02="147852";
				int dbnum02 = 20161217;
				double dbhacjum02 =4.1;
				String dbgrade02 = "A";
				
				String dbid03 = "id03";
				String dbname03 = "��Ŭ����";
				String dbpw03="zxcv1234";
				int dbnum03 = 20161218;
				double dbhacjum03 =1;
				String dbgrade03 = "F";
				
				String dbid04 = "id04";
				String dbname04 = "���";
				String dbpw04="ehsRktm";
				int dbnum04 = 20161219;
				double dbhacjum04 =3.2;
				String dbgrade04 = "B";
				
				String dbid05 = "id05";
				String dbname05 = "Ŭ��";
				String dbpw05="159753";
				int dbnum05 = 20161220;
				double dbhacjum05 =3.2;
				String dbgrade05 = "B-";	
				
				
		System.out.println("  ");
		System.out.println("  ");
		System.out.println("���̵�, �̸�, ��й�ȣ�� �Է����ּ���.");
		System.out.println("  ");
					
		
	//if�� ����
		if(geta.id.equals(dbid01)){
			if(geta.name.equals(dbname01)){
				if(geta.pw.equals(dbpw01)){
					System.out.println("�α��� ����.");
					System.out.println("============================");
					System.out.println(geta.name+"���� ������ ����մϴ�.");
					System.out.println("�й� : "+dbnum01);
					System.out.println("���� : "+dbhacjum01);
					System.out.println("��� : "+dbgrade01);
					System.out.println("============================");
				}else{
					System.out.println("=======�α��� ����=======");
					System.out.println("�ùٸ� ������ �Է����ּ���.");
				}
			}else{
				System.out.println("=======�α��� ����=======");
				System.out.println("�ùٸ� ������ �Է����ּ���.");
			}
			
		}else if(geta.id.equals(dbid02)){
			if(geta.name.equals(dbname02)){
				if(geta.pw.equals(dbpw02)){
					System.out.println("�α��� ����.");
					System.out.println("============================");
					System.out.println(geta.name+"���� ������ ����մϴ�.");
					System.out.println("�й� : "+dbnum02);
					System.out.println("���� : "+dbhacjum02);
					System.out.println("��� : "+dbgrade02);
					System.out.println("============================");
				}else{
					System.out.println("=======�α��� ����=======");
					System.out.println("�ùٸ� ������ �Է����ּ���.");
				}
			}else{
				System.out.println("=======�α��� ����=======");
				System.out.println("�ùٸ� ������ �Է����ּ���.");
			}
			
		}else if(geta.id.equals(dbid03)){
			if(geta.name.equals(dbname03)){
				if(geta.pw.equals(dbpw03)){
					System.out.println("�α��� ����.");
					System.out.println("============================");
					System.out.println(geta.name+"���� ������ ����մϴ�.");
					System.out.println("�й� : "+dbnum03);
					System.out.println("���� : "+dbhacjum03);
					System.out.println("��� : "+dbgrade03);
					System.out.println("============================");
				}
			}
			
		}else if(geta.id.equals(dbid04)){
			if(geta.name.equals(dbname04)){
				if(geta.pw.equals(dbpw04)){
					System.out.println("�α��� ����.");
					System.out.println("============================");
					System.out.println(geta.name+"���� ������ ����մϴ�.");
					System.out.println("�й� : "+dbnum04);
					System.out.println("���� : "+dbhacjum04);
					System.out.println("��� : "+dbgrade04);
					System.out.println("============================");
				}else{
					System.out.println("=======�α��� ����=======");
					System.out.println("�ùٸ� ������ �Է����ּ���.");
				}
			}else{
				System.out.println("=======�α��� ����=======");
				System.out.println("�ùٸ� ������ �Է����ּ���.");
			}
			
		}else if(geta.id.equals(dbid05)){
				if(geta.name.equals(dbname05)){
					if(geta.pw.equals(dbpw05)){
						System.out.println("�α��� ����.");
						System.out.println("============================");
						System.out.println(geta.name+"���� ������ ����մϴ�.");
						System.out.println("�й� : "+dbnum05);
						System.out.println("���� : "+dbhacjum05);
						System.out.println("��� : "+dbgrade05);
						System.out.println("============================");
					}else{
						System.out.println("=======�α��� ����=======");
						System.out.println("�ùٸ� ������ �Է����ּ���.");
					}
				}else{
					System.out.println("=======�α��� ����=======");
					System.out.println("�ùٸ� ������ �Է����ּ���.");
				}
				
			}
		else{
			System.out.println("=======�α��� ����=======");
			System.out.println("�ùٸ� ������ �Է����ּ���.");
		}
		
						
		
	}
		
	


	
	
}
