package com.auto.sns.post.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.PostInfo;
/**
 * : t_auto_sns_post_info
 * 
 * 
 * @author Gen
 */
public interface IPostInfoDAO{
	/**
	 * @param bean
	 * @return
	 */
	PostInfo insertPostInfo(PostInfo bean);
	/**
	 * @param postGuid
	 * @return
	 */
	boolean deletePostInfo(String postGuid);	
	/**
	 * @param bean
	 * @return
	 */
	PostInfo updatePostInfo(PostInfo bean);	
	/**
	 * @param postGuid
	 * @return
	 */
	PostInfo loadPostInfo(String postGuid);
	
	/**
	 * 查询发帖信息
	 * 分页查询
	 * @param param
	 * @return
	 */
	List<PostInfo> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<PostInfo> queryList(Map<String,Object> param);
	
	/**
	 * @param param
	 * @return
	 */
	List<Map> listPost(Map<String,Object> param,Page page);
	
	/**
	 * 更新帖子回复数 自动加1
	 * @param bean
	 * @return
	 */
	void updatePostInfoHuifuNum(String postGuid);	
	
	/**
	 * 更新帖子转发数 自动加1
	 * @param bean
	 * @return
	 */
	void updatePostInfoZhuanfaNum(String postGuid);	
	
	/**
	 * 更新帖子点赞数 自动加1
	 * @param bean
	 * @return
	 */
	void updatePostInfoZanNum(String postGuid);
	
	/**
	 * 更新帖子点赞数 自动减1
	 * @param bean
	 * @return
	 */
	void updatePostInfoZanNumMinus(String postGuid);

}
