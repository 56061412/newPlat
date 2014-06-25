package com.auto.sns.login.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.login.domain.SnsRegUserLogin;
/**
 * : t_auto_sns_reg_user_login
 * 
 * 
 * @author Gen
 */
public interface ISnsRegUserLoginDAO{
	/**
	 * @param bean
	 * @return
	 */
	SnsRegUserLogin insertSnsRegUserLogin(SnsRegUserLogin bean);
	/**
	 * @param srulGuid
	 * @return
	 */
	boolean deleteSnsRegUserLogin(String srulGuid);	
	/**
	 * @param bean
	 * @return
	 */
	SnsRegUserLogin updateSnsRegUserLogin(SnsRegUserLogin bean);	
	/**
	 * @param srulGuid
	 * @return
	 */
	SnsRegUserLogin loadSnsRegUserLogin(String srulGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<SnsRegUserLogin> queryList(Map<String,Object> param,Page page);

}
