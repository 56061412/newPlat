package com.auto.sns.task.service;

public class SnsTaskServiceFactory {
	public static SnsTaskInfoService snsTaskInfoService;
	public static SnsTaskPersonService snsTaskPersonService;
	public static void setSnsTaskInfoService(SnsTaskInfoService snsTaskInfoService) {
		SnsTaskServiceFactory.snsTaskInfoService = snsTaskInfoService;
	}
	public static void setSnsTaskPersonService(
			SnsTaskPersonService snsTaskPersonService) {
		SnsTaskServiceFactory.snsTaskPersonService = snsTaskPersonService;
	}
	
	
}
