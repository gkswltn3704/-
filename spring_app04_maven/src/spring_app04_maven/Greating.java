package spring_app04_maven;

public class Greating implements Message {

	@Override
	public void sayHello(String str) {
		System.out.println(str);
	}

}
