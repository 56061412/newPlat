package com.auto.sns.login.service;

import java.util.List;

import com.auto.sns.login.domain.SnsRegRefree;
import com.auto.sns.login.domain.SnsRegUserLogin;
import com.system.common.Page;

public interface ISnsRegService {
	
	/**
	 * 保存注册帐号时使用的推荐人信息
	 * 注册帐号时没有工号(用户代码) 用手机号代替
	 * @param srreUserCode		推荐人帐号
	 * @param srreUserName		推荐人姓名
	 * @param srreRegUserCode	注册手机号
	 * @param srreRegUserName	真实姓名
	 * @return
	 * @throws Exception
	 */
	public boolean saveOrUpdateSnsRegRefree(String srreUserCode, String srreUserName, String srreRegUserCode, String srreRegUserName) throws Exception;
	
	boolean saveOrUpdateSnsRegRefree(SnsRegRefree snsRegRefree) throws Exception;
	
	boolean saveOrUpdateSnsRegUserLogin(SnsRegUserLogin snsRegUserLogin) throws Exception;
	
	boolean saveRegisterStepTwo(SnsRegUserLogin snsRegUserLogin, SnsRegRefree snsRegRefree) throws Exception;
	
	/**
	 * 查询注册用户信息对象列表分页
	 * @param bean	用户信息对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<SnsRegUserLogin> queryPageListSnsRegUserLogin(SnsRegUserLogin snsRegUserLogin, Page page) throws Exception;

}
