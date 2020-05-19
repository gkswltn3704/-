package spring_app09_anno;

import org.springframework.beans.factory.annotation.Autowired;

public class StunGun implements Weapon {

	int bullet;
	
	public StunGun() {
		this.bullet = 1;
	}

	
	@Override
	public void use() {
		// TODO Auto-generated method stub
		System.out.println("지이이이익~~~~");
		bullet = 0;
	}

	@Override
	public void reuse() {
		// TODO Auto-generated method stub
		System.out.println("재충전");
		bullet = 1;
	}

	@Override
	public void drop() {
		// TODO Auto-generated method stub
		System.out.println("충전기 보급 중 .....");
		bullet = 0;
	}
	
	
}
