package spring_app07_maven;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NowTime {
	public String getTime() {
		Date d = new Date();				//현재 date를 d에 가져온다.
		SimpleDateFormat sdf = new SimpleDateFormat("HH 시 mm분"); 		//date 포맷을 설정한다.
		
		return sdf.format(d);			//포맷을 설정한데에 date를 넣어주고 리턴한다.
	}
	
}
