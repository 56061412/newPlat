package com.auto.sns.post.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.PostContent;
import com.auto.sns.post.dao.IPostContentDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.post.sql.sqlid.PostContentSqlID;
/**
 * : t_auto_sns_post_content
 * 
 * 
 * @author Gen
 */
public class PostContentDAOImpl extends AutoDaoPersistUtil implements IPostContentDAO{

	public PostContent insertPostContent(PostContent bean){
		return insert(bean, PostContentSqlID.INSERT);
	}

	public boolean deletePostContent(String contentGuid){
		delete(contentGuid, PostContentSqlID.DELETE);
		return true;
	}
	
	public boolean deletePostContentBySourceGuid(String sourceGuid){
		delete(sourceGuid, PostContentSqlID.DELETE_BY_SOURCE_GUID);
		return true;
	}

	public PostContent updatePostContent(PostContent bean){
		return update(bean, PostContentSqlID.UPDATE);
	}	

	public PostContent loadPostContent(String contentGuid){
		return query(new PostContent().getClass(), contentGuid);
	}

	public List<PostContent> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, PostContentSqlID.QUERY));
		return querySpecial(param, PostContentSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<PostContent> queryList(Map<String,Object> param){
		return query(param, PostContentSqlID.QUERY);
	}

}
