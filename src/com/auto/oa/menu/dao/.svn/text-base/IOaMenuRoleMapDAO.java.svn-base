package com.auto.oa.menu.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.menu.domain.OaMenuRoleMap;
/**
 * : t_auto_oa_menu_role_map
 * 
 * 
 * @author WangYi
 */
public interface IOaMenuRoleMapDAO{
	
	/**
	 * @param bean
	 * @return
	 */
	OaMenuRoleMap insertOaMenuRoleMap(OaMenuRoleMap bean);
	
	/**
	 * 根据菜单角色配置表主键删除信息
	 * @param aprmmGuid 菜单角色配置表主键
	 * @return
	 */
	boolean deleteOaMenuRoleMap(String aprmmGuid);
	
	/**
	 * 根据菜单信息表主键删除菜单角色配置信息
	 * @param apmeGuid 菜单信息表主键
	 * @return
	 */
	boolean deleteOaMenuRoleMapByApmeGuid(String apmeGuid);
	
	/**
	 * 根据角色信息表主键删除菜单角色配置信息
	 * @param aproGuid 角色信息表主键
	 * @return
	 */
	boolean deleteOaMenuRoleMapByAproGuid(String aproGuid);
	
	/**
	 * @param bean
	 * @return
	 */
	OaMenuRoleMap updateOaMenuRoleMap(OaMenuRoleMap bean);
	
	/**
	 * @param aprmmGuid
	 * @return
	 */
	OaMenuRoleMap loadOaMenuRoleMap(String aprmmGuid);
	
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaMenuRoleMap> queryPageList(Map<String,Object> param,Page page);
	
	List<OaMenuRoleMap> queryList(Map<String,Object> param);

}
