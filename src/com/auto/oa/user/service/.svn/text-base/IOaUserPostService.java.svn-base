package com.auto.oa.user.service;

import java.util.List;

import com.auto.oa.user.domain.OaUserPost;
import com.system.common.Page;

/**
 * 用户岗位 逻辑处理
 * 接口定义
 * @author acute
 *
 */
public interface IOaUserPostService {
	
	/**
	 * 查询用户岗位对象列表分页
	 * @param bean	用户岗位对象
	 * @param page	分页对象
	 * @return
	 * @throws Exception
	 */
	List<OaUserPost> queryPageListOaUserPost(OaUserPost oaUserPost, Page page) throws Exception;
	
	/**
	 * 保存用户岗位对象
	 * @param bean 用户岗位对象
	 * @return
	 */
	boolean saveOrUpdateOaUserPost(OaUserPost oaUserPost) throws Exception;
	
	/**
	 * 删除用户岗位对象
	 * @param guid 用户岗位对象主键
	 * @return
	 */
	boolean deleteOaUserPost(String guid) throws Exception;
	
	/**
	 * 删除用户岗位对象
	 * @param orgCode	用户所在组织机构代码
	 * @param postCode	用户岗位对象 岗位代码
	 * @return
	 */
	boolean deleteOaUserPostByPostCode(String orgCode, String postCode) throws Exception;
	
	/**
	 * 检查岗位代码是否已存在
	 * @param postCode 用户岗位对象 岗位代码
	 * @return
	 */
	boolean checkPostCodeExists(String postCode) throws Exception;
	
	/**
	 * 获取用户岗位对象
	 * @param guid 用户岗位对象 主键
	 * @return
	 */
	OaUserPost getOaUserPost(String guid) throws Exception;
	
	/**
	 * 获取用户岗位对象
	 * @param orgCode	用户所在组织机构代码
	 * @param postCode	用户岗位对象 岗位代码
	 * @return
	 * @throws Exception
	 */
	OaUserPost getOaUserPostByPostCode(String orgCode, String postCode) throws Exception;
	
}
