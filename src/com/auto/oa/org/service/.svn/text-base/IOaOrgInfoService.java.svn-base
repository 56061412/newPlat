package com.auto.oa.org.service;

import java.util.List;

import com.auto.oa.org.domain.OaOrgInfo;
import com.auto.oa.user.domain.OaUserOrgMap;

/**
 * 组织结构信息 逻辑处理
 * 接口定义
 * @author acute
 *
 */
public interface IOaOrgInfoService {
	
	/**
	 * @说明
	 * 查询组织信息对象树
	 * 按当前登录人员权限查询组织
	 * 例如：A公司管理员 只能查看A公司组织
	 * 系统管理员可以查看所有组织
	 * 
	 * @param OaOrgInfo 组织结构对象
	 * @return List<OaOrgInfo>
	 * @throws Exception
	 */
	List<OaOrgInfo> queryTreeOaOrgInfo(OaOrgInfo bean, String sessionUserCode) throws Exception;
	
	List<OaOrgInfo> queryListOaOrgInfo(OaOrgInfo bean) throws Exception;
	
	/**
	 * 保存组织结构对象
	 * @param bean 组织结构对象
	 * @return
	 * @throws Exception
	 */
	boolean saveOrUpdateOaOrgInfo(OaOrgInfo bean) throws Exception;
	
	/**
	 * 删除组织结构对象
	 * @param guid 组织结构对象主键
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaOrgInfo(String guid) throws Exception;
	
	/**
	 * 删除组织结构对象
	 * @param orgCode 组织结构对象 组织代码
	 * @return
	 * @throws Exception
	 */
	boolean deleteOaOrgInfoByOrgCode(String orgCode) throws Exception;
	
	/**
	 * 检查组织代码是否已存在
	 * @param orgCode 组织代码
	 * @return	存在 true 不存在 false
	 * @throws Exception
	 */
	boolean checkOrgCodeExists(String orgCode) throws Exception;
	
	/**
	 * 获取组织结构对象
	 * @param guid 组织结构对象主键
	 * @return
	 * @throws Exception
	 */
	OaOrgInfo getOaOrgInfo(String guid) throws Exception;
	
	/**
	 * 获取组织结构对象
	 * @param orgCode 组织结构对象 组织代码
	 * @return
	 * @throws Exception
	 */
	OaOrgInfo getOaOrgInfoByOrgCode(String orgCode) throws Exception;
	
	/**
	 * 获取组织结构对象
	 * @param userGuid 用户主键
	 * @return
	 * @throws Exception
	 */
	public OaUserOrgMap getOaUserOrgMapByUserGuid(String userGuid) throws Exception;
	

}
