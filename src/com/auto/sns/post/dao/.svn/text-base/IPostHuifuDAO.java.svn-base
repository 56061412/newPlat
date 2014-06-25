package com.auto.sns.post.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.PostHuifu;
/**
 * : t_auto_sns_post_huifu
 * 
 * 
 * @author Gen
 */
public interface IPostHuifuDAO{
	/**
	 * @param bean
	 * @return
	 */
	PostHuifu insertPostHuifu(PostHuifu bean);
	/**
	 * @param huifuGuid
	 * @return
	 */
	boolean deletePostHuifu(String huifuGuid);	
	/**
	 * @param bean
	 * @return
	 */
	PostHuifu updatePostHuifu(PostHuifu bean);	
	/**
	 * @param huifuGuid
	 * @return
	 */
	PostHuifu loadPostHuifu(String huifuGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<PostHuifu> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<PostHuifu> queryList(Map<String,Object> param);
	
	/**
	 * @param param
	 * @return
	 */
	List<Map> listHuifu(Map<String,Object> param);

}
