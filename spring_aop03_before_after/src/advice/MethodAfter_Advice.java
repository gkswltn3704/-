package advice;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.aop.AfterReturningAdvice;

public class MethodAfter_Advice implements AfterReturningAdvice {

	@Override
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		// OS에 파일로그 그 결과를 저장해두기
		//C:\Users\goott2\Downloads\log\오늘날짜.txt
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMddhh24mmss");
		String fileName = sdf.format(d);
		
		// 디렉토리 생성
		String dir = "C:\\Users\\goott2\\Downloads\\log";
		
		File f = new File(dir);			//파일을 만들어 경로에 생성하겠다.
		
		// 파일 객체 생성
		// new File(디렉토리+파일이름+확장자)
		File f2 = new File(dir+"\\"+fileName+".txt");
		
		// 파일, 디렉토리가 존재하지 않으면 생성
		if(!f.exists()) {
			f.mkdir();			// 디렉토리가 없다면 만들어준다
		}
		
		if(!f2.exists()) {
			f2.createNewFile();			//파일이 없다면 만들어준다.
		}
		
		// 추가로 파일에 저장해서 출력해보세요
		// '파일이름' 저장되었습니다.
		// '10000' 이체되었습니다.
		PrintWriter pw = new PrintWriter(f2);
		pw.print(fileName + " 저장되었습니다.");
		pw.print(args[0] + " 이체되었습니다.");
		pw.flush();
		pw.close();
		
		// 이런식으로 생성하는 것이 로그 기록의 일종 => 감사자료.....
		
		// 매개변수 출력
//		System.out.println("returnValue : " + returnValue);
//		System.out.println("method : "+ method);
//		System.out.println("args : "+ args[0]);
//		System.out.println("target : "+ target.getClass().getName());
		
	}
	
}
