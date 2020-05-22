package spring_aop01;

import java.lang.reflect.Method;

import org.springframework.aop.MethodBeforeAdvice;

// 이 객체를 메인업무 호출 전에 실행하고 싶음
public class HijackAdice implements MethodBeforeAdvice {

	@Override
	public void before(Method method, Object[] args, Object target) throws Throwable {
		// advice 원하는 타이밍에 실행되어야 할 코드
		System.out.println("공통된 관심업무를 지정");
		System.out.println("메인업무가 실행되기 전에 가로채기");
		
	}
	
}
