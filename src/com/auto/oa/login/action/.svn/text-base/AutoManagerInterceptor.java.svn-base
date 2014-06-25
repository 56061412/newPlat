package com.auto.oa.login.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.service.IOaUserInfoService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 拦截器
 * 是否登录超时
 * @author acute
 *
 */
public class AutoManagerInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 6375545854768210912L;
	private final static String PLAT_USERLABLE = "plat_userLable";
	
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> map = ActionContext.getContext().getSession();
		ActionSupport action = (ActionSupport) invocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
        HttpServletRequest request = ServletActionContext.getRequest();
		
		if (action instanceof AutoManagerLoginAction)
		    return invocation.invoke();
        
		if(map.isEmpty() || null == map.get(PLAT_USERLABLE)){
			System.out.println("登录超时 或 未获取到Session！");
			
            boolean isAjax = this.isAjaxRequest(request);
            if(isAjax){
            	response.sendError(408);
            	return Action.LOGIN;
            }else{
            	return Action.LOGIN;
            }
		}else{
			String userCode = map.get(PLAT_USERLABLE).toString();
			OaUserInfo oaUserInfo = oaUserInfoService.getOaUserInfoByUserCode(userCode);
			boolean bool = oaUserInfoService.isRoleUser(oaUserInfo);
			if(bool){
				return invocation.invoke();
			}else{
				boolean isAjax = this.isAjaxRequest(request);
	            if(isAjax){
	            	response.sendError(408);
	            	return Action.LOGIN;
	            }else{
	            	return Action.LOGIN;
	            }
			}
		}
	}
	
	/**
	 * 验证是否Ajax请求
	 * @param request
	 * @return
	 * 是 返回true</br>
	 * 否 返回false
	 */
	private boolean isAjaxRequest(HttpServletRequest request) {
		String header = request.getHeader("X-Requested-With");
		if (header != null && "XMLHttpRequest".equals(header))
			return true;
		else
			return false;
	}

}
