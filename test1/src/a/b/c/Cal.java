package a.b.c;

public class Cal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int result = sum(2,3);
		System.out.println("��� : "+result);
	}
	//�� ���� �Է¹޾� ���ϰ� ���� �����ϴ� �޼��带 ����
	public static int sum(int one, int two){
		System.out.println("ù��° �� : "+one);
		System.out.println("�ι�° �� : "+two);
		int hap = one + two;
		System.out.println("�� : "+hap);
		return hap;
	}

}
