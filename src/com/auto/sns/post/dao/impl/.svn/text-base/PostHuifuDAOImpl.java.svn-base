package com.auto.sns.post.dao.impl;

import java.util.List;
import java.util.Map;

import com.auto.sns.post.dao.IPostHuifuDAO;
import com.auto.sns.post.domain.PostHuifu;
import com.auto.sns.post.sql.sqlid.PostHuifuSqlID;
import com.system.common.Page;
import com.system.util.AutoDaoPersistUtil;
/**
 * : t_auto_sns_post_huifu
 * 
 * 
 * @author Gen
 */
public class PostHuifuDAOImpl extends AutoDaoPersistUtil implements IPostHuifuDAO{

	public PostHuifu insertPostHuifu(PostHuifu bean){
		return insert(bean, PostHuifuSqlID.INSERT);
	}

	public boolean deletePostHuifu(String huifuGuid){
		delete(huifuGuid, PostHuifuSqlID.DELETE);
		return true;
	}	

	public PostHuifu updatePostHuifu(PostHuifu bean){
		return update(bean, PostHuifuSqlID.UPDATE);
	}	

	public PostHuifu loadPostHuifu(String huifuGuid){
		return query(new PostHuifu().getClass(), huifuGuid);
	}

	public List<PostHuifu> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, PostHuifuSqlID.QUERY));
		return querySpecial(param, PostHuifuSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<PostHuifu> queryList(Map<String,Object> param){
		return query(param, PostHuifuSqlID.QUERY);
	}

	@Override
	public List<Map> listHuifu(Map<String, Object> param) {
		return query(param, PostHuifuSqlID.listHuifu);
	}
}
