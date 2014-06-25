package com.auto.sns.post.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.sns.post.domain.PostInfo;
import com.auto.sns.post.dao.IPostInfoDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.sns.post.sql.sqlid.PostInfoSqlID;
/**
 * : t_auto_sns_post_info
 * 
 * 
 * @author Gen
 */
public class PostInfoDAOImpl extends AutoDaoPersistUtil implements IPostInfoDAO{

	public PostInfo insertPostInfo(PostInfo bean){
		return insert(bean, PostInfoSqlID.INSERT);
	}

	public boolean deletePostInfo(String postGuid){
		delete(postGuid, PostInfoSqlID.DELETE);
		return true;
	}	

	public PostInfo updatePostInfo(PostInfo bean){
		return update(bean, PostInfoSqlID.UPDATE);
	}	

	public PostInfo loadPostInfo(String postGuid){
		return query(new PostInfo().getClass(), postGuid);
	}

	public List<PostInfo> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, PostInfoSqlID.QUERY));
		return querySpecial(param, PostInfoSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<PostInfo> queryList(Map<String,Object> param){
		return query(param, PostInfoSqlID.QUERY);
	}

	@Override
	public List<Map> listPost(Map<String, Object> param,Page page) {
		page.setCount(countSpecial(param, PostInfoSqlID.LISTPOST));
		return querySpecial(param, PostInfoSqlID.LISTPOST, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	@Override
	public void updatePostInfoHuifuNum(String postGuid) {
		PostInfo postInfo = new PostInfo();
		postInfo.setPostGuid(postGuid);
		
		update(postInfo, PostInfoSqlID.UPDATE_POSTINFO_HUIFU_NUM);
	}

	@Override
	public void updatePostInfoZhuanfaNum(String postGuid) {
		PostInfo postInfo = new PostInfo();
		postInfo.setPostGuid(postGuid);
		
		update(postInfo, PostInfoSqlID.UPDATE_POSTINFO_ZHUANFA_NUM);
	}

	@Override
	public void updatePostInfoZanNum(String postGuid) {
		PostInfo postInfo = new PostInfo();
		postInfo.setPostGuid(postGuid);
		
		update(postInfo, PostInfoSqlID.UPDATE_POSTINFO_ZAN_NUM);
	}

	@Override
	public void updatePostInfoZanNumMinus(String postGuid) {
		PostInfo postInfo = new PostInfo();
		postInfo.setPostGuid(postGuid);
		
		update(postInfo, PostInfoSqlID.UPDATE_POSTINFO_ZAN_NUM_MINUS);
	}

}
