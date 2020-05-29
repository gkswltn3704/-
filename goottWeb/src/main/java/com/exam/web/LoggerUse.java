package com.exam.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoggerUse {
	private static final Logger logger =
			LoggerFactory.getLogger(LoggerUse.class);
	
	@RequestMapping("processStep1")
	public void processStep1() {
		logger.info("proecessStep1 호출....");
	}
	
	@RequestMapping("processStep2")
	public void processStep2() {
		logger.info("proecessStep2 호출....");
	}
	
}
