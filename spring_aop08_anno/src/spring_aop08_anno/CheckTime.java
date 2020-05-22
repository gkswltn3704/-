package spring_aop08_anno;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.util.StopWatch;

@Aspect
public class CheckTime {
	
	@Pointcut("execution (public * * (..))")		//main 업무 형식에 맞게 쓰기
	public void publicPointcut() {}								//규약이 정해짐!!
	
	@Around("publicPointcut()")						//호출한 규약을 통해서 수행하라~
	public Object logAround(ProceedingJoinPoint pjp) throws Throwable {
		
		// 메소드 이름 체크
		String methodName = pjp.getSignature().getName();

		
		StopWatch sw = new StopWatch();
		
		sw.start();
		
		Object obj = pjp.proceed();
		
		sw.stop();
		
		System.out.println("메소드 이름 : "+methodName);
		System.out.println("수행시간 : "+ sw.getTotalTimeSeconds());
		
		return obj;
	}
	
	
	
}
