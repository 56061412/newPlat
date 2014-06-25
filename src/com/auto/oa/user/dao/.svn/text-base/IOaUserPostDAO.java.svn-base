package com.auto.oa.user.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.user.domain.OaUserPost;
/**
 * : t_auto_oa_user_post
 * 
 * 
 * @author WangYi
 */
public interface IOaUserPostDAO{
	/**
	 * @param bean
	 * @return
	 */
	OaUserPost insertOaUserPost(OaUserPost bean);
	/**
	 * @param aupoGuid
	 * @return
	 */
	boolean deleteOaUserPost(String aupoGuid);	
	/**
	 * @param bean
	 * @return
	 */
	OaUserPost updateOaUserPost(OaUserPost bean);	
	/**
	 * @param aupoGuid
	 * @return
	 */
	OaUserPost loadOaUserPost(String aupoGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<OaUserPost> queryList(Map<String,Object> param,Page page);

}
