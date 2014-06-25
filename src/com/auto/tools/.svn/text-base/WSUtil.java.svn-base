package com.auto.tools;

import java.util.ArrayList;
import java.util.List;

import com.auto.ws.WSJsonResultBean;
import com.system.util.JsonUtil;
import com.system.util.Md5Util;

public class WSUtil {
	/**
	 * 移动端
	 * 修改用户头像模块
	 */
	public static final String MODULE_USER_HEAD_TYPE_CODE = "MODULE_USER_HEAD";
	
	/**
	 * 移动端
	 * 发布微博信息模块
	 */
	public static final String MODULE_POST_INFO_TYPE_CODE = "MODULE_POST_INFO";
	
	/**
	 * 验证是否有效互信码
	 * 通过MD5加密互信码后比较
	 * 互信码一致返回：true
	 * 互信码不一致返回：false
	 * @param passCode
	 * @return
	 * @throws Exception 
	 */
	public static boolean isValidityPassCode(String passCode) throws Exception{
		boolean bool = false;
		String rightPassCode = "123";
		String md5PassCode = Md5Util.encryptByMD5(rightPassCode);
		if(md5PassCode.equals(passCode)){
			bool = true;
		}
		
		return bool;
	}
	
	@SuppressWarnings("unchecked")
	/**
	 * 返回状态为成功的 json 字符串
	 * 
	 * @param object
	 * @return
	 */
	public static String getWSResultBeanSuccess(Object object){
		WSJsonResultBean resultBean = new WSJsonResultBean();
		resultBean.setResultDataType(WSJsonResultBean.DATA_TYPE_SUCCESS);
		
		if(object instanceof  List){
			List<Object> resultList = (List<Object>) object;
			
			resultBean.setResultList(resultList);
		}else{
			List<Object> resultList = new ArrayList<Object>();
			resultList.add(object);
			
			resultBean.setResultList(resultList);
		}
		
		String resultJsonStr = JsonUtil.beanToJsonObject(resultBean).toString();
		
		return resultJsonStr;
	}
	
	/**
	 * 返回状态为失败的 json字符串
	 * @return
	 */
	public static String getWSResultBeanFailure(){
		WSJsonResultBean resultBean = new WSJsonResultBean();
		resultBean.setResultDataType(WSJsonResultBean.DATA_TYPE_FAILURE);
		
		String resultJsonStr = JsonUtil.beanToJsonObject(resultBean).toString();
		
		return resultJsonStr;
	}
	
	/**
	 * 返回状态为失败的 json字符串
	 * @param info 信息
	 * @return
	 */
	public static String getWSResultBeanFailure(String info){
		WSJsonResultBean resultBean = new WSJsonResultBean();
		resultBean.setResultInfo(info);
		resultBean.setResultDataType(WSJsonResultBean.DATA_TYPE_FAILURE);
		
		String resultJsonStr = JsonUtil.beanToJsonObject(resultBean).toString();
		
		return resultJsonStr;
	}
	
}
