package spring_aop09_anno_HW;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class CheckWeapon {
	
	@Pointcut("execution (public * fire())")
	public void publicPointcut() {}
	
	@Around("publicPointcut()")						//호출한 규약을 통해서 수행하라~
	public Object logAround(JoinPoint pjp) throws Throwable {
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY/MM/dd - hh:mm:ss");
		
		// ProceedingJoinPoint는 aop:around만 지원
		Object obj = ((ProceedingJoinPoint)pjp).proceed();
		
		String useTime = sdf.format(d);
		
		String pathName = "C:\\Users\\goott2\\Downloads\\log\\weapon3.txt";
		
		File f = new File(pathName);
		
		if(!f.exists()) {
			f.createNewFile();
		}
		
		PrintWriter pw = new PrintWriter(f);
		pw.println(useTime + "  : 무기 사용 시각");
		pw.flush();
		pw.close();
		
		return obj;

	}
	
}
