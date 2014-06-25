package com.auto.oa.user.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.user.domain.OaUserLogin;
/**
 * : t_auto_oa_user_login
 * 
 * 
 * @author Gen
 */
public interface IOaUserLoginDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaUserLogin insertOaUserLogin(OaUserLogin bean);
	/**
	 * @param auloGuid
	 * @return
	 */
	boolean deleteOaUserLogin(String auloGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaUserLogin updateOaUserLogin(OaUserLogin bean);	
	/**
	 * @param auloGuid
	 * @return
	 */
	OaUserLogin loadOaUserLogin(String auloGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaUserLogin> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<OaUserLogin> queryList(Map<String,Object> param);

}
