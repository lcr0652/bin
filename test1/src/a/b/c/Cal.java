package a.b.c;

public class Cal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int result = sum(2,3);
		System.out.println("결과 : "+result);
	}
	//두 수를 입력받아 더하고 합을 리턴하는 메서드를 선언
	public static int sum(int one, int two){
		System.out.println("첫번째 값 : "+one);
		System.out.println("두번째 값 : "+two);
		int hap = one + two;
		System.out.println("합 : "+hap);
		return hap;
	}

}
