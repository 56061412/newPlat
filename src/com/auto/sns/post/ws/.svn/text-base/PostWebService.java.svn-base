package com.auto.sns.post.ws;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jws.WebService;

import com.auto.sns.post.service.SnsPostServiceFactory;
import com.auto.ws.WSJsonResultBean;
import com.system.util.JsonUtil;

@WebService
public class PostWebService {
	public PostWebService(){
		
	}
	
	public String listPost(String msgNo,String userCode){
		WSJsonResultBean resultBean = new WSJsonResultBean();
		resultBean.setResultDataType("-1");
		
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("postCreater", userCode);
		param.put("postPage", "myPage");
		param.put("offset", "1");
		param.put("limit", "20");
		try {
			List list = SnsPostServiceFactory.snsPostInfoService.listPost(param);

			resultBean.setResultDataType("1");
			resultBean.setResultList(list);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		String rs = JsonUtil.beanToJsonObject(resultBean).toString();
		System.out.println("rs......................"+rs);
		
		return rs;
	}
	
	public static void main(String[] args) {
		new PostWebService().listPost("sss","admin");
		
//		String address = "http://localhost:8080/allwin/com.auto.ws.AutoWebService";
//		Endpoint.publish(address, new PostWebService());
	}

}
