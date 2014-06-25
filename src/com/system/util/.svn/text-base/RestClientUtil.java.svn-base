package com.system.util;

import javax.ws.rs.core.MediaType;

import org.apache.wink.client.Resource;
import org.apache.wink.client.RestClient;

public class RestClientUtil {
	
	public static void sendSMS(String jsonSMS){
		try {
			RestClient client = new RestClient();
			
//			mobile = "13761250376";
			//message = "您好,您兑换的土豪大礼包套餐已从<中通快递>发出，请注意查收。单号：728324128291 [汉高积分商城] ";
			String uri = "http://henkel-aam.com:8088/allwinSMS/rest/smsRest/sendMessageByJsonStr";
//			String uri = "http://localhost:8080/allwinSMS/rest/smsRest/sendMessageByJsonStr";
			System.out.println("response........................start");
			System.out.println("jsonSMS........................"+jsonSMS);
			
			
			Resource resource = client.resource(uri);
			String response = resource.accept(MediaType.APPLICATION_JSON).header("Content-Type","text/plain; charset=UTF-8").post(String.class, jsonSMS);
			System.out.println("response..............................."+response);
			System.out.println("response........................end");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
