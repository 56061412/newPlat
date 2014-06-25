package com.auto.oa.login.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import com.auto.oa.user.cons.UserConstant;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.proxy.OaUserInfoProxy;
import com.auto.oa.user.service.IOaUserInfoService;
import com.opensymphony.xwork2.Action;
import com.system.common.BaseAction;
import com.system.util.BeanUtil;

/**
 * 后台登录和登出ACTION
 * @author acute
 *
 */
public class AutoManagerLoginAction extends BaseAction {

	private static final long serialVersionUID = -5946137321963058124L;
	private final static String PLAT_USERLABLE = "plat_userLable";
	
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;
	
	public String autoManagerLogin() {
		try {
			String userCode = getRequest().getParameter("userCode");
			String password = getRequest().getParameter("userPassword");
			
			OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoForLogin(userCode, password);
			if(BeanUtil.isObjectNull(oaUserInfo)){
				getRequest().setAttribute("loginError", "用户名或密码不正确");
				
				return Action.LOGIN;
			}else{
				if(oaUserInfoService.isRoleUser(oaUserInfo)){
					Map<String, Object> sessionMap = new HashMap<String, Object>();
					sessionMap.put(PLAT_USERLABLE, userCode);
					oaUserInfo = OaUserInfoProxy.getOaUserInfo(oaUserInfo);
					sessionMap.put("userInfo", oaUserInfo);
					setSession(sessionMap);
					
					getHttpSession().setAttribute(PLAT_USERLABLE, userCode);
					getHttpSession().setAttribute("userInfo", oaUserInfo);
					
					//记录登录日志
					oaUserInfo.setAuserLoginLog(UserConstant.LOGIN_LOG_PC);
					oaUserInfo.setAuserLoginState(UserConstant.LOGIN_STATE_IN);
					
					oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
					
					return Action.SUCCESS;
				}else{
					getRequest().setAttribute("loginError", "对不起，您没有权限访问管理系统，请咨询系统管理员");
					
					return Action.LOGIN;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return Action.LOGIN;
		}
	}
	
	public String autoManagerLogout() {
		try {
			Map<String, Object> sessionMap = getSession();
			
			//退出系统 记录日志
			if(null != sessionMap && !sessionMap.isEmpty()){
				String userCode = getSessionUserCode(getRequest());
				
				OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
				oaUserInfo.setAuserLoginState(UserConstant.LOGIN_STATE_OFF);
				oaUserInfoService.saveOrUpdateOaUserInfo(oaUserInfo);
			}
			
			//退出系统
			sessionMap.remove(PLAT_USERLABLE);
			getHttpSession().removeAttribute(PLAT_USERLABLE);
			
			return Action.SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return Action.LOGIN;
		}
	}

}
