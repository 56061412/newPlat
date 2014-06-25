package com.auto.sns.post.dao;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.PostContent;
/**
 * : t_auto_sns_post_content
 * 
 * 
 * @author Gen
 */
public interface IPostContentDAO{
	/**
	 * @param bean
	 * @return
	 */
	PostContent insertPostContent(PostContent bean);
	/**
	 * @param contentGuid
	 * @return
	 */
	boolean deletePostContent(String contentGuid);	
	
	/**
	 * 根据外键（业务主键）删除
	 * @param sourceGuid
	 * @return
	 */
	boolean deletePostContentBySourceGuid(String sourceGuid);
	/**
	 * @param bean
	 * @return
	 */
	PostContent updatePostContent(PostContent bean);	
	/**
	 * @param contentGuid
	 * @return
	 */
	PostContent loadPostContent(String contentGuid);
	/**
	 * @param param
	 * @param page
	 * @return
	 */
	List<PostContent> queryPageList(Map<String,Object> param,Page page);

	/**
	 * @param param
	 * @return
	 */
	List<PostContent> queryList(Map<String,Object> param);

}
