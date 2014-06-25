package com.auto.sns.login.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.auto.oa.user.domain.OaUserInfo;
import com.auto.sns.login.domain.SnsRegUserLogin;
import com.auto.sns.login.service.ISnsRegService;
import com.opensymphony.xwork2.Action;
import com.system.common.BaseAction;
import com.system.common.Page;
import com.system.util.JsonUtil;

public class SnsIndexAction extends BaseAction {
	@Resource(name="snsRegService")
	private ISnsRegService snsRegService;
	
	private static final long serialVersionUID = 2305160316760883400L;

	public String autoRepairerIndex() {
		return Action.SUCCESS;
	}
	
	/**
	 * 查询注册用户信息分页列表	SnsRegUserLogin
	 * @throws Exception
	 */
	public void queryPageListSnsRegUserLogin() throws Exception{
		Page page = getPage();

		String search = getRequest().getParameter("search");
		SnsRegUserLogin snsRegUserLogin = (SnsRegUserLogin) JsonUtil.jsonToBean(search, SnsRegUserLogin.class);
		
		OaUserInfo oaUserInfo = getSessionOaUserInfo();
		String userCode = oaUserInfo.getAuserCode();
		if(!"admin".equals(userCode)){
			String userOrgCode = oaUserInfo.getAuorgCode();
			snsRegUserLogin.setSrulOrgCode(userOrgCode);
		}
		
		List<SnsRegUserLogin> list = new ArrayList<SnsRegUserLogin>();
		list = snsRegService.queryPageListSnsRegUserLogin(snsRegUserLogin, page);
		
		pageListWriteOut(list, page);
	}
	
	/**
	 * 保存对象(新增和修改) SnsRegUserLogin
	 * @throws Exception
	 */
	public void saveOrUpdateSnsRegUserLogin() throws Exception{
		String data = getRequest().getParameter("data");
		List<SnsRegUserLogin> listSnsRegUserLogin = JsonUtil.jsonToList(data, SnsRegUserLogin.class);

		for (SnsRegUserLogin snsRegUserLogin : listSnsRegUserLogin) {
			snsRegService.saveOrUpdateSnsRegUserLogin(snsRegUserLogin);
		}
	}
	
}
