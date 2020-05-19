package string_app08_anno;

import org.springframework.beans.factory.annotation.Autowired;

public class SystemMonitor implements Monitor {
	
	@Autowired					//필요한 곳에 자동으로 묶기 => xml에 새로운 bean 필요 => main에 factory도 바꿔줘야함 
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
