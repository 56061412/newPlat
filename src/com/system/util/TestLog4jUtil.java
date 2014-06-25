package com.system.util;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class TestLog4jUtil {
	
	public static void testLog4j(){
		PropertyConfigurator.configure("F:\\workFile\\workspace\\allwin\\src\\log4j.properties"); 
		   //在后台输出 
		   Logger logger1 = Logger.getLogger(TestLog4jUtil.class); 
		   logger1.debug("debug!!!"); 
		   logger1.info("info!!!"); 
		   logger1.warn("warn!!!"); 
		   logger1.error("error!!!"); 
		   logger1.fatal("fatal!!!");
	}
	
	public static void main(String[] args) {
		testLog4j();
	}

}
