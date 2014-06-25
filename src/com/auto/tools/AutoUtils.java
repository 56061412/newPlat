package com.auto.tools;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.org.domain.proxy.OaOrgInfoProxy;
import com.auto.oa.org.service.IOaOrgInfoService;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.service.IOaUserInfoService;
import com.system.common.BeanContext;
import com.system.common.Page;
import com.system.util.BeanUtil;
import com.system.util.JsonUtil;

public class AutoUtils {
	
	/**
	 * 获取登录用户帐号
	 * @return
	 */
//	public static String getUserCode(){
//		String userCode = "";
//		try {
//			userCode = SessionUtil.getCurrentUserLabel();
//		} catch (NullPointerException e) {
//			userCode = "mobilUser";
//		}
//		String userCode = "admin";
//		System.out.println("userCode...........1231........."+userCode);
		
//		return userCode;
//	}
	
	/**
	 * 获取用户姓名
	 * @param userCode	登录帐号
	 * @return
	 * @throws Exception
	 */
	public static String getUserName(String userCode) throws Exception{
		String userName = "";
		if(BeanUtil.isNotBlank(userCode)){
			IOaUserInfoService oaUserInfoService = (IOaUserInfoService)BeanContext.getBean("oaUserInfoService");
			OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
			if(null != oaUserInfo){
				userName = oaUserInfo.getAuserName();
			}
			
			return userName;
		}else{
			throw new NullPointerException("用户工号为空，无法获取用户姓名");
		}
	}
	
	/**
	 * 获取用户组织代码
	 * @param userCode	用户帐号
	 * @return
	 * @throws Exception
	 */
	public static String getUserOrgCode(String userCode) throws Exception{
		if(BeanUtil.isNotBlank(userCode)){
			IOaUserInfoService oaUserInfoService = (IOaUserInfoService)BeanContext.getBean("oaUserInfoService");
			OaUserInfo oaUserInfo = oaUserInfoService.getUserOrg(userCode);
			String orgCode = "ErrorOrgCode";
			if(!BeanUtil.isObjectNull(oaUserInfo)){
				orgCode = oaUserInfo.getAuorgCode();
			}
			
			return orgCode;
		}else{
			throw new NullPointerException("用户工号为空，无法获取用户所在组织代码");
		}
	}
	
	/**
	 * 获取组织名称
	 * @param orgCode	组织代码
	 * @return
	 * @throws Exception
	 */
	public static String getUserOrgName(String orgCode) throws Exception{
		if(BeanUtil.isNotBlank(orgCode)){
			String orgName = "";
			IOaOrgInfoService oaOrgInfoService = (IOaOrgInfoService)BeanContext.getBean("oaOrgInfoService");
			OaOrgInfo oaOrgInfo = oaOrgInfoService.getOaOrgInfoByOrgCode(orgCode);
			orgName = oaOrgInfo.getAuorgName();
			
			return orgName;
		}else{
			throw new NullPointerException("用户工号为空，无法获取用户姓名");
		}
	}
	
	public static Page getPage(HttpServletRequest request){
		long pageIndex = Long.valueOf(request.getParameter("pageIndex"));//页数
		long pageSize = Long.valueOf(request.getParameter("pageSize"));//每页条数
		
		Page page = new Page(pageIndex*pageSize,pageSize);
		
		String sortField = request.getParameter("sortField"); //排序字段
		String sortOrder = request.getParameter("sortOrder"); //排序方式
		
		if(sortField!=null){
			page.setOrderBy(sortField);
		}
		if(sortOrder!=null){
			page.setOrder(sortOrder);
		}
		
		return page;
	}
	
	/**
	 * Action使用 
	 * 分页显示数据封装
	 * 将查询结果转换成 json 并输出 
	 */
	@SuppressWarnings("rawtypes")
	public static String pageListWriteOut(List list, Page page) throws IOException{
		JSONObject resultJson = JsonUtil.listToJsonObject(list);
		resultJson.put("total", page.getCount());
//		System.out.println("resultJson............."+resultJson);
		String str = resultJson.toString();
		
		return str;
	}
	
	/**
	 * Action使用 
	 * 树结构显示数据封装
	 * 将查询结果转换成 json 并输出 
	 */
	@SuppressWarnings("rawtypes")
	public static String pageTreeWriteOut(List list) throws IOException{
		JSONArray resultJsonArray = JsonUtil.listToJSONArray(list);
//		System.out.println("resultJsonArray............."+resultJsonArray);
		String str = resultJsonArray.toString();
		
		return str;
	}

	/**
	 * 将对象转成Json字符串
	 * @param obj
	 * @return
	 * @throws IOException
	 */
	public static String detailResultWriteOut(Object obj) throws IOException{
		JSONObject resultJson = JsonUtil.beanToJsonObject(obj);
//		System.out.println("resultJson............."+resultJson);
		String str = resultJson.toString();
		
		return str;
	}
	
	/**
	 * 获取系统分配的用户账号
	 * @param orgGuid
	 * @return
	 * @throws Exception
	 */
	public static String getAutoUserCode(String orgGuid) throws Exception{
		IOaOrgInfoService oaOrgInfoService = (IOaOrgInfoService)BeanContext.getBean("oaOrgInfoService");
		OaOrgInfo oaOrgInfo = oaOrgInfoService.getOaOrgInfo(orgGuid);
		oaOrgInfo = OaOrgInfoProxy.getOaOrgInfo(oaOrgInfo);
		String orgCode = oaOrgInfo.getAuorgCode();
		int orgUserCount = oaOrgInfo.getOaUserInfos().size();
		
		String userCountStr = String.valueOf(orgUserCount);
		String fomat = "00000";
		String userCodeNO = "";
		if(!((userCountStr.length() - fomat.length()) > 0)){
			userCodeNO = fomat.substring(userCountStr.length()) + userCountStr;
		}
		
		String userCode = orgCode+ "U" + userCodeNO;
		
		
		return userCode;
	}
	
	/**
	 * 获取系统分配的用户账号
	 * @param orgCode
	 * @return
	 * @throws Exception
	 */
	public static String getAutoUserCodeByOrgCode(String orgCode) throws Exception{
		IOaOrgInfoService oaOrgInfoService = (IOaOrgInfoService)BeanContext.getBean("oaOrgInfoService");
		OaOrgInfo oaOrgInfo = oaOrgInfoService.getOaOrgInfoByOrgCode(orgCode);
		oaOrgInfo = OaOrgInfoProxy.getOaOrgInfo(oaOrgInfo);
		int orgUserCount = oaOrgInfo.getOaUserInfos().size();
		
		String userCountStr = String.valueOf(orgUserCount);
		String fomat = "000";
		String userCodeNO = "";
		if(!((userCountStr.length() - fomat.length()) > 0)){
			userCodeNO = fomat.substring(userCountStr.length()) + userCountStr;
		}
		
		String userCode = orgCode + userCodeNO;
		
		return userCode;
	}
	
	public static void main(String[] args) throws Exception {
		String orgCode = "781099";
		String userCountStr = String.valueOf(6);
		String fomat = "000";
		String userCodeNO = "";
		if(!((userCountStr.length() - fomat.length()) > 0)){
			userCodeNO = fomat.substring(userCountStr.length()) + userCountStr;
		}
		
		String userCode = orgCode + userCodeNO;
		
		System.out.println("userCode.................."+userCode);
	}

}
