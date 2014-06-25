package com.auto.oa.org.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.org.domain.OaOrgInfo;
/**
 * : t_auto_oa_org_info
 * 
 * 
 * @author Gen
 */
public interface IOaOrgInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaOrgInfo insertOaOrgInfo(OaOrgInfo bean);
	/**
	 * @param auorgGuid
	 * @return
	 */
	boolean deleteOaOrgInfo(String auorgGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaOrgInfo updateOaOrgInfo(OaOrgInfo bean);	
	/**
	 * @param auorgGuid
	 * @return
	 */
	OaOrgInfo loadOaOrgInfo(String auorgGuid);
	
	OaOrgInfo loadOaOrgInfoByOrgCode(String auorgCode);
	
	List<OaOrgInfo> queryOaOrgInfo(Map<String,Object> param);
	
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaOrgInfo> queryList(Map<String,Object> param,Page page);

}
