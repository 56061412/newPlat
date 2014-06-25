package com.auto.oa.menu.service;

import java.util.List;

import com.auto.oa.menu.domain.OaMenuInfo;
import com.auto.oa.menu.domain.OaMenuRoleMap;
import com.system.common.Page;

public interface IOaMenuInfoService {
	
	String MENU_TOP_GUID = "1";
	
	/**
	 * 查询菜单树
	 * @param OaMenuInfo 菜单对象
	 * @return List<OaMenuInfo>
	 * @throws Exception
	 */
	List<OaMenuInfo> queryTreeOaMenuInfo(OaMenuInfo bean) throws Exception;
	
	/**
	 * 查询菜单列表
	 * @param OaMenuInfo 菜单对象
	 * @return List<OaMenuInfo>
	 * @throws Exception
	 */
	List<OaMenuInfo> queryPageListOaMenuInfo(OaMenuInfo bean, Page page) throws Exception;
	
	/**
	 * 查询菜单、角色、人员关系
	 * @param bean
	 * @return
	 * @throws Exception
	 */
	List<OaMenuInfo> queryListOaMenuInfoForUser(OaMenuInfo bean) throws Exception;
	
	/**
	 * 查询菜单、角色关系
	 * 分页列表
	 * @param bean
	 * @param page
	 * @return
	 * @throws Exception
	 */
	List<OaMenuInfo> queryPageListOaMenuInfoForRole(OaMenuInfo bean, Page page) throws Exception;
	
	/**
	 * 保存菜单配置对象
	 * @param bean 菜单配置对象
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaMenuInfo(OaMenuInfo bean) throws Exception;
	
	/**
	 * 保存菜单角色对象
	 * @param bean 菜单角色对象 OaMenuRoleMap
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaMenuRoleMap(OaMenuRoleMap bean) throws Exception;
	
	/**
	 * 删除菜单配置对象
	 * @param guid 菜单配置对象主键
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaMenuInfo(String guid) throws Exception;
	
	/**
	 * 删除菜单角色对象
	 * @param guid 菜单角色对象主键
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaMenuRoleMap(String guid) throws Exception;
	
	/**
	 * 获取菜单配置对象
	 * @param guid 菜单配置对象主键
	 * @return
	 * @throws Exception
	 */
	OaMenuInfo getOaMenuInfo(String guid) throws Exception;
	
	List<OaMenuInfo> queryListOaMenuInfo(OaMenuInfo bean) throws Exception;
	
}
