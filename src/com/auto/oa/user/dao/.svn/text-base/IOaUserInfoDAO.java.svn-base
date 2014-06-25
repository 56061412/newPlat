package com.auto.oa.user.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.user.domain.OaUserInfo;

/**
 * : t_auto_oa_user_info
 * 
 * 
 * @author WangYi
 */
public interface IOaUserInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaUserInfo insertOaUserInfo(OaUserInfo bean);
	/**
	 * @param auserGuid
	 * @return
	 */
	boolean deleteOaUserInfo(String auserGuid);
	
	boolean deleteOaUserInfoByUserCode(String auserCode);	
	/**
	 * @param bean
	 * @return
	 */
	OaUserInfo updateOaUserInfo(OaUserInfo bean);	
	/**
	 * @param auserGuid
	 * @return
	 */
	OaUserInfo loadOaUserInfo(String auserGuid);
	
	OaUserInfo loadOaUserInfoByUserCode(String auserCode) throws IllegalArgumentException, IllegalAccessException;
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaUserInfo> queryPageListOaUserInfo(Map<String,Object> param,Page page);
	
	List<OaUserInfo> queryListOaUserInfo(Map<String,Object> param);
	
	List<OaUserInfo> queryPageListUserOrg(Map<String,Object> param,Page page);
	
	List<OaUserInfo> queryListUserOrg(Map<String,Object> param);

}
