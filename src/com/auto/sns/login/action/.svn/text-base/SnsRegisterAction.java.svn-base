package com.auto.sns.login.action;

import javax.annotation.Resource;

import com.auto.oa.sys.common.SysConstanct;
import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.service.IOaUserInfoService;
import com.auto.sns.login.domain.SnsRegRefree;
import com.auto.sns.login.domain.SnsRegUserLogin;
import com.auto.sns.login.service.ISnsRegService;
import com.opensymphony.xwork2.Action;
import com.system.common.BaseAction;
import com.system.util.BeanUtil;
import com.system.util.DateUtil;
import com.system.util.JsonUtil;

public class SnsRegisterAction extends BaseAction {
	@Resource(name="oaUserInfoService")
	private IOaUserInfoService oaUserInfoService;
	@Resource(name="snsRegService")
	private ISnsRegService snsRegService;
	
	private static final long serialVersionUID = 2305160316760883400L;

	/**
	 * 用户注册第一步
	 * 验证填写的推荐人帐号是否有效
	 * @return
	 */
	public String userRegisterStepOne() {
		try {
			//推荐人帐号
			String recommendAccount = getRequest().getParameter("recommendAccount");
			if(BeanUtil.isNotBlank(recommendAccount)){
				recommendAccount = recommendAccount.trim();
				//查询推荐人帐号是否存在
				OaUserInfo oaUserInfo = oaUserInfoService.getUserOrg(recommendAccount);
				if(!BeanUtil.isObjectNull(oaUserInfo)){
					getRequest().setAttribute("recommendUserInfo", oaUserInfo);
					
					return Action.SUCCESS;
				}else{
					getRequest().setAttribute("regError", "对不起，您输入的推荐人帐号不正确");
					
					return Action.INPUT;
				}
			}else{
				return Action.INPUT;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return Action.INPUT;
		}
		
	}
	
	/**
	 * 用户注册第二步</br>
	 * 保存注册信息</br>
	 * 包括个人基本信息</br>
	 * 包括个人与组织关系信息</br>
	 * 包括个人与岗位关系信息
	 * @return
	 */
	public void userRegisterStepTwo() throws Exception{
		try {
			String data = getRequest().getParameter("data");
			SnsRegUserLogin snsRegUserLogin = (SnsRegUserLogin) JsonUtil.jsonToBean(data, SnsRegUserLogin.class);
			SnsRegRefree snsRegRefree = (SnsRegRefree) JsonUtil.jsonToBean(data, SnsRegRefree.class);
			
			String srulUserBirthday = getRequest().getParameter("srulUserBirthday");
			if(BeanUtil.isNotBlank(srulUserBirthday)){
				snsRegUserLogin.setSrulUserBirthday(DateUtil.toDate(srulUserBirthday, DateUtil.DEFAULT_DATE_PATTERN));
			}
			
			String srulOrgCode = getRequest().getParameter("srulOrgCode");
			String srulOrgName = getRequest().getParameter("srulOrgName");
			
			snsRegUserLogin.setSrulOrgCode(srulOrgCode);
			snsRegUserLogin.setSrulOrgName(srulOrgName);
			
			String srreRegUserCode = snsRegUserLogin.getSrulUserMobile();
			String srreRegUserName = snsRegUserLogin.getSrulUserName();
			snsRegRefree.setSrreRegUserCode(srreRegUserCode);
			snsRegRefree.setSrreRegUserName(srreRegUserName);
			
			//设置注册用户信息状态 0 注册成功 待审核
			snsRegUserLogin.setSrulStatus(SysConstanct.LOGIN_SUCS);
			
			snsRegService.saveRegisterStepTwo(snsRegUserLogin, snsRegRefree);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}
	
}
