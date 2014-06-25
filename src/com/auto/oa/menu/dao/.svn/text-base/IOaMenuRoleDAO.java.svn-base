package com.auto.oa.menu.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuRole;
/**
 * : t_auto_oa_menu_role
 * 
 * 
 * @author WangYi
 */
public interface IOaMenuRoleDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaMenuRole insertOaMenuRole(OaMenuRole bean);
	/**
	 * @param aproGuid
	 * @return
	 */
	boolean deleteOaMenuRole(String aproGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaMenuRole updateOaMenuRole(OaMenuRole bean);	
	/**
	 * @param aproGuid
	 * @return
	 */
	OaMenuRole loadOaMenuRole(String aproGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaMenuRole> queryPageList(Map<String,Object> param,Page page);
	
	List<OaMenuRole> queryList(Map<String,Object> param);
	
	List<OaMenuRole> queryPageListOaMenuRoleOrgInfo(Map<String, Object> param, Page page);
	
}
