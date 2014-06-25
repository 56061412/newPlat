package com.auto.oa.user.dao;

import java.util.List;
import java.util.Map;

import com.auto.oa.user.domain.OaUserOrgMap;
/**
 * : t_auto_oa_user_org_map
 * 
 * 
 * @author WangYi
 */
public interface IOaUserOrgMapDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaUserOrgMap insertOaUserOrgMap(OaUserOrgMap bean);
	/**
	 * @param aoumGuid
	 * @return
	 */
	boolean deleteOaUserOrgMap(String aoumGuid);
	
	boolean deleteOaUserOrgMapByUserGuid(String auserGuid);
	/**
	 * @param bean
	 * @return
	 */
	OaUserOrgMap updateOaUserOrgMap(OaUserOrgMap bean);	
	/**
	 * @param aoumGuid
	 * @return
	 */
	OaUserOrgMap loadOaUserOrgMap(String aoumGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaUserOrgMap> queryListOaUserOrgMap(Map<String,Object> param);

}
