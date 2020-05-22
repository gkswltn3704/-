package spring_aop03_before_hw;

public class BankServiceImple implements Bank{
	
	private String name;
	private int balence;
	
	public void setName(String name) {
		this.name = name;
	}

	public void setBalence(int balence) {
		this.balence = balence;
	}


	@Override
	public void transfer(int money) {
		// TODO Auto-generated method stub
		System.out.println("계좌이체를 시작합니다");
		System.out.println(name + " 계좌에서 " + money + "원 출금되었습니다.");
		
		if(balence > money) {
			balence -= money;			
		}
		System.out.println("잔액 : " + balence + "원");
	}
	
}
