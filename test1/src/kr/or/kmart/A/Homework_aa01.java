package kr.or.kmart.A;

public class Homework_aa01 {

	public static void main(String[] args) {
		Homework_user u01 = new Homework_user();
		Homework_user u02 = new Homework_user();
		Homework_user u03 = new Homework_user();
		Homework_user u04 = new Homework_user();
		Homework_user u05 = new Homework_user();
	
	//아이디, 이름, 비밀번호, 학번, 학점, 등급을 입력하는 상황 가정
		u01.id = "id01";
		u01.name = "김난희";
		u01.pw = "4755";
		u01.num = 20161216;
		u01.hacjum = 4.5;
		u01.grade = "A+";
		
		u02.id = "id02";
		u02.name = "오라클";
		u02.pw = "147852";
		u02.num = 20161217;
		u02.hacjum = 4.1;
		u02.grade = "A";
		
		u03.id = "id03";
		u03.name = "이클립스";
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
		u05.name = "클럽";
		u05.pw = "159753";
		u05.num = 20161220;
		u05.hacjum = 2.8;
		u05.grade = "B-";
	
	//입력완료를 누르면 나오는 화면 출력 메서드
		insert(u01);	
		
		
	//아이디, 이름, 비밀번호 입력후 맞는지 확인하고 출력
		u01.id = "id02";
		u01.name="오라클";
		u01.pw = "147852";
		check(u01);
		
		
	
	}
	public static void insert(Homework_user geti){
		System.out.println("==============================");
		System.out.println("정보를 입력하셨습니다.");
		System.out.println("아이디 : "+geti.id);
		System.out.println("이름 : "+geti.name);
		System.out.println("비밀번호 : "+geti.pw);
		System.out.println("학번 : "+geti.num);
		System.out.println("학점 : "+geti.hacjum);
		System.out.println("등급 : "+geti.grade);
		System.out.println("==============================");
		System.out.println("==========정보입력 확인============");	
		System.out.println("==============================");
	}
	
	
	
	//아이디, 이름, 비밀번호가 맞는지 확인하고 출력하는 메서드
	public static void check(Homework_user geta){

				//데이터베이스
				String dbid01 = "id01";
				String dbname01 = "김난희";
				String dbpw01="4755";
				int dbnum01 = 20161216;
				double dbhacjum01 =4.5;
				String dbgrade01 = "A+";
				
				String dbid02 = "id02";
				String dbname02 = "오라클";
				String dbpw02="147852";
				int dbnum02 = 20161217;
				double dbhacjum02 =4.1;
				String dbgrade02 = "A";
				
				String dbid03 = "id03";
				String dbname03 = "이클립스";
				String dbpw03="zxcv1234";
				int dbnum03 = 20161218;
				double dbhacjum03 =1;
				String dbgrade03 = "F";
				
				String dbid04 = "id04";
				String dbname04 = "돈까스";
				String dbpw04="ehsRktm";
				int dbnum04 = 20161219;
				double dbhacjum04 =3.2;
				String dbgrade04 = "B";
				
				String dbid05 = "id05";
				String dbname05 = "클럽";
				String dbpw05="159753";
				int dbnum05 = 20161220;
				double dbhacjum05 =3.2;
				String dbgrade05 = "B-";	
				
				
		System.out.println("  ");
		System.out.println("  ");
		System.out.println("아이디, 이름, 비밀번호를 입력해주세요.");
		System.out.println("  ");
					
		
	//if문 시작
		if(geta.id.equals(dbid01)){
			if(geta.name.equals(dbname01)){
				if(geta.pw.equals(dbpw01)){
					System.out.println("로그인 성공.");
					System.out.println("============================");
					System.out.println(geta.name+"님의 정보를 출력합니다.");
					System.out.println("학번 : "+dbnum01);
					System.out.println("학점 : "+dbhacjum01);
					System.out.println("등급 : "+dbgrade01);
					System.out.println("============================");
				}else{
					System.out.println("=======로그인 실패=======");
					System.out.println("올바른 정보를 입력해주세요.");
				}
			}else{
				System.out.println("=======로그인 실패=======");
				System.out.println("올바른 정보를 입력해주세요.");
			}
			
		}else if(geta.id.equals(dbid02)){
			if(geta.name.equals(dbname02)){
				if(geta.pw.equals(dbpw02)){
					System.out.println("로그인 성공.");
					System.out.println("============================");
					System.out.println(geta.name+"님의 정보를 출력합니다.");
					System.out.println("학번 : "+dbnum02);
					System.out.println("학점 : "+dbhacjum02);
					System.out.println("등급 : "+dbgrade02);
					System.out.println("============================");
				}else{
					System.out.println("=======로그인 실패=======");
					System.out.println("올바른 정보를 입력해주세요.");
				}
			}else{
				System.out.println("=======로그인 실패=======");
				System.out.println("올바른 정보를 입력해주세요.");
			}
			
		}else if(geta.id.equals(dbid03)){
			if(geta.name.equals(dbname03)){
				if(geta.pw.equals(dbpw03)){
					System.out.println("로그인 성공.");
					System.out.println("============================");
					System.out.println(geta.name+"님의 정보를 출력합니다.");
					System.out.println("학번 : "+dbnum03);
					System.out.println("학점 : "+dbhacjum03);
					System.out.println("등급 : "+dbgrade03);
					System.out.println("============================");
				}
			}
			
		}else if(geta.id.equals(dbid04)){
			if(geta.name.equals(dbname04)){
				if(geta.pw.equals(dbpw04)){
					System.out.println("로그인 성공.");
					System.out.println("============================");
					System.out.println(geta.name+"님의 정보를 출력합니다.");
					System.out.println("학번 : "+dbnum04);
					System.out.println("학점 : "+dbhacjum04);
					System.out.println("등급 : "+dbgrade04);
					System.out.println("============================");
				}else{
					System.out.println("=======로그인 실패=======");
					System.out.println("올바른 정보를 입력해주세요.");
				}
			}else{
				System.out.println("=======로그인 실패=======");
				System.out.println("올바른 정보를 입력해주세요.");
			}
			
		}else if(geta.id.equals(dbid05)){
				if(geta.name.equals(dbname05)){
					if(geta.pw.equals(dbpw05)){
						System.out.println("로그인 성공.");
						System.out.println("============================");
						System.out.println(geta.name+"님의 정보를 출력합니다.");
						System.out.println("학번 : "+dbnum05);
						System.out.println("학점 : "+dbhacjum05);
						System.out.println("등급 : "+dbgrade05);
						System.out.println("============================");
					}else{
						System.out.println("=======로그인 실패=======");
						System.out.println("올바른 정보를 입력해주세요.");
					}
				}else{
					System.out.println("=======로그인 실패=======");
					System.out.println("올바른 정보를 입력해주세요.");
				}
				
			}
		else{
			System.out.println("=======로그인 실패=======");
			System.out.println("올바른 정보를 입력해주세요.");
		}
		
						
		
	}
		
	


	
	
}
