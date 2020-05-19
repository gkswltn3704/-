package spring_app11_JavaConf;

public class SystemMonitor implements Monitor {
	
	Sender sender;
	
	public void setSender(Sender sender) {
		this.sender = sender;
	}

	@Override
	public void showMonitor() {
		if(sender != null) sender.show();				//sender가 null이 아니면 show를 실행
		else System.out.println("sender is null");		//sender가 null이라면 출력
	}
	
}
