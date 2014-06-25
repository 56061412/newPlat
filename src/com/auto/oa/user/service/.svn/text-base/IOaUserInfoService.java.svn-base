package com.auto.oa.user.service;

import java.util.List;

import com.auto.oa.user.domain.OaUserInfo;
import com.auto.oa.user.domain.OaUserLogin;
import com.auto.oa.user.domain.OaUserOrgMap;
import com.system.common.Page;

/**
 * 用户信息 逻辑处理
 * 接口定义
 * @author acute
 *
 */
public interface IOaUserInfoService {
	
	/**
	 * 查询用户信息对象列表分页
	 * @param bean	用户信息对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaUserInfo> queryPageListOaUserInfo(OaUserInfo bean, Page page) throws Exception;
	
	/**
	 * @说明：点击组织树查询出用户信息
	 * 查询用户及组织信息对象列表分页
	 * @param bean	用户信息扩展对象(用户信息对象和组织信息对象)
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaUserInfo> queryPageListUserOrg(OaUserInfo bean, Page page) throws Exception;
	
	/**
	 * @说明：
	 * 查询用户信息和所在组织信息
	 * @param userCode	用户帐号
	 * @return
	 * @throws Exception
	 */
	OaUserInfo getUserOrg(String userCode) throws Exception;
	
	/**
	 * @说明：
	 * 查询用户信息列表
	 * @param oaUserInfo
	 * @return
	 * @throws Exception
	 */
	List<OaUserInfo> queryOaUserInfoList(OaUserInfo oaUserInfo) throws Exception;
	
	/**
	 * 保存用户信息
	 * @param oaUserInfo
	 * @return
	 * @throws Exception
	 */
	public boolean saveOrUpdateOaUserInfo(OaUserInfo oaUserInfo) throws Exception;
	
	/**
	 * 修改用户密码
	 * @param userCode
	 * @param newPassword
	 * @throws Exception
	 */
	OaUserInfo updateOaUserInfoPWD(String userCode, String newPassword) throws Exception;
	
	/**
	 * 保存用户信息对象</br>
	 * 点击组织树节点 查询出相关用户信息</br>
	 * 添加用户时保存对应的组织信息</br>
	 * 需要操作 用户信息对象<OaUserInfo>和用户组织关系对象<OaUserOrgMap>
	 * @param bean	用户信息对象
	 * @return
	 */
	boolean saveOrUpdateOaUserInfo(OaUserInfo oaUserInfo, OaUserOrgMap oaUserOrgMap) throws Exception;
	
	/**
	 * 删除用户信息对象</br>
	 * 同时删除用户组织关系对象</br>
	 * @param guid	用户信息对象主键
	 * @return
	 */
	boolean deleteOaUserInfo(String guid) throws Exception;
	
	/**
	 * 删除用户信息对象</br>
	 * 同时删除用户组织关系对象</br>
	 * @param userCode	用户信息对象 用户工号
	 * @return
	 */
	boolean deleteOaUserInfoByUserCode(String userCode) throws Exception;
	
	/**
	 * 检查用户工号是否已存在
	 * @param userCode 用户工号
	 * @return
	 * 存在 true</br>
	 * 不存在 false
	 */
	boolean checkUserCodeExists(String userCode) throws Exception;
	
	/**
	 * 获取用户信息对象
	 * @param guid	用户信息对象主键
	 * @return
	 */
	OaUserInfo getOaUserInfo(String guid) throws Exception;
	
	/**
	 * 获取用户信息对象
	 * @param userCode	用户信息对象 用户工号
	 * @return
	 */
	OaUserInfo getOaUserInfoByUserCode(String userCode) throws Exception;
	
	/**
	 * 获取用户信息
	 * 用户登录使用
	 * @param userCode	登录帐号
	 * @param password	登录密码
	 * @return
	 * @throws Exception
	 */
	OaUserInfo getOaUserInfoForLogin(String userCode, String password) throws Exception;
	
	
	/**
	 * 是否配置过角色的用户
	 * @param oaUserInfo	用户信息对象
	 * @return	
	 * true	配置过角色</br>
	 * false	未配置过角色 
	 * @throws Exception
	 */
	boolean isRoleUser(OaUserInfo oaUserInfo) throws Exception;
	
	OaUserLogin saveOrUpdateOaUserLogin(OaUserLogin oaUserLogin) throws Exception;
	
	List<OaUserLogin> queryOaUserLoginList(OaUserLogin oaUserLogin)  throws Exception;

}
