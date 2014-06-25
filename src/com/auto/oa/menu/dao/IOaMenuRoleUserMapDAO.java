package com.auto.oa.menu.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
/**
 * : t_auto_oa_menu_role_user_map
 * 
 * 
 * @author WangYi
 */
public interface IOaMenuRoleUserMapDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaMenuRoleUserMap insertOaMenuRoleUserMap(OaMenuRoleUserMap bean);
	/**
	 * @param aprumGuid
	 * @return
	 */
	boolean deleteOaMenuRoleUserMap(String aprumGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaMenuRoleUserMap updateOaMenuRoleUserMap(OaMenuRoleUserMap bean);	
	/**
	 * @param aprumGuid
	 * @return
	 */
	OaMenuRoleUserMap loadOaMenuRoleUserMap(String aprumGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaMenuRoleUserMap> queryPageList(Map<String,Object> param,Page page);
	
	List<OaMenuRoleUserMap> queryList(Map<String,Object> param);

}
