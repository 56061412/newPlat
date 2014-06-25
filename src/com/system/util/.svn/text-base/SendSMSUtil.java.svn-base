package com.system.util;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import net.sf.json.JSONObject;

public class SendSMSUtil extends TimerTask{
	public static Timer timer = new Timer();
	public static List<Map<String, String>> smsList;
	
	public SendSMSUtil(){
		String fileName = "G:/henkelSMS.xls";
		try {
			smsList = ReadExecl.readExeclSendMSG(fileName, 1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void run() {
		if(!smsList.isEmpty()){
			System.out.println("发送短信。。。。。。。。。。。。。。");
			System.out.println("发送短信。。。。。。。。。。smsList。。。。"+smsList.size());
			Map<String, String> map = (Map<String, String>)smsList.get(0);
			String jsonSMS = JSONObject.fromObject(map).toString();
			System.out.println("jsonSMS................................."+jsonSMS);
			
			RestClientUtil.sendSMS(jsonSMS);
			
			smsList.remove(0);
			System.out.println("发送短信。。。。。。。。。。smsList。。。。"+smsList.size());
		}else{
			System.out.println("cancel定时。。。。。。。。。。。。。");
			timer.cancel();
		}
	}
	
	public static void main(String[] args) {
		SendSMSUtil sendSMSUtil = new SendSMSUtil();
		Date date = new Date();
		
		timer.schedule(sendSMSUtil, date, 8000);
	}

}
