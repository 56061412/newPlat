package com.auto.oa.menu.service;

import java.util.List;

import com.auto.oa.menu.domain.OaMenuRole;
import com.auto.oa.menu.domain.OaMenuRoleUserMap;
import com.system.common.Page;

/**
 * 系统角色 逻辑处理
 * 接口定义
 * @author acute
 *
 */
public interface IOaMenuRoleService {
	
	/**
	 * 查询系统角色
	 * 列表结构
	 * @param bean	系统角色对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaMenuRole> queryPageListOaMenuRole(OaMenuRole bean, Page page) throws Exception;
	
	/**
	 * 查询系统角色
	 * 树结构
	 * @param bean	系统角色对象
	 * @return
	 * @throws Exception
	 */
	List<OaMenuRole> queryTreeOaMenuRole(OaMenuRole bean) throws Exception;
	
	/**
	 * 查询角色人员配置关系
	 * @param bean	角色人员关系对象
	 * @return
	 * @throws Exception
	 */
	List<OaMenuRoleUserMap> queryListOaMenuRoleUserMap(OaMenuRoleUserMap bean) throws Exception;
	
	/**
	 * 查询系统角色已配置人员
	 * 列表结构
	 * @param bean	系统角色扩展对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaMenuRole> queryPageListOaMenuRoleUserInfo(OaMenuRole bean, Page page) throws Exception;
	
	/**
	 * 保存系统角色
	 * @param bean 系统角色对象
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaMenuRole(OaMenuRole bean) throws Exception;
	
	/**
	 * 删除系统角色
	 * @param guid 系统角色对象 主键
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaMenuRole(String guid) throws Exception;
	
	/**
	 * 获取系统角色详细
	 * @param bean	系统角色对象 主键
	 * @return
	 * @throws Exception
	 */
	OaMenuRole getOaMenuRole(String guid) throws Exception;
	
	/**
	 * 保存系统角色人员关系
	 * @param bean	系统角色人员关系对象
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaMenuRoleUserMap(OaMenuRoleUserMap bean) throws Exception;
	
	/**
	 * 删除系统角色人员关系
	 * @param guid	系统角色人员关系对象 主键
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaMenuRoleUserMap(String guid) throws Exception;

}
