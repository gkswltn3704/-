package spring_app09_anno;

import org.springframework.beans.factory.annotation.Autowired;

public class Sniper implements Character{
	
	@Autowired
	Weapon w;
	StunGun sg;
	Gun g;
	
	int hp;
	
	public Sniper() {
		this.hp = 100;
	}
	
	public Sniper(Weapon w, int hp) {
		this.w = w;
		this.hp = hp;
	}
	

	@Override
	public void walk() {
		// TODO Auto-generated method stub
		System.out.println("뚜벅뚜벅");
	}

	@Override
	public void eat(String it) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attack(Object obj) {
		// TODO Auto-generated method stub
		System.out.println(obj + " 조준하고 호흡을 멈추고 쏜다");
		w.use();
	}

	@Override
	public void get(Object obj) {
		// TODO Auto-generated method stub
		
	}

}
