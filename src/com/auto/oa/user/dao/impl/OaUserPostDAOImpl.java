package com.auto.oa.user.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.user.domain.OaUserPost;
import com.auto.oa.user.dao.IOaUserPostDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.user.sql.sqlid.OaUserPostSqlID;
/**
 * : t_auto_oa_user_post
 * 
 * 
 * @author WangYi
 */
public class OaUserPostDAOImpl extends AutoDaoPersistUtil implements IOaUserPostDAO{

	public OaUserPost insertOaUserPost(OaUserPost bean){
		return insert(bean, OaUserPostSqlID.INSERT);
	}

	public boolean deleteOaUserPost(String aupoGuid){
		delete(aupoGuid, OaUserPostSqlID.DELETE);
		return true;
	}	

	public OaUserPost updateOaUserPost(OaUserPost bean){
		return update(bean, OaUserPostSqlID.UPDATE);
	}	

	public OaUserPost loadOaUserPost(String aupoGuid){
		return query(new OaUserPost().getClass(), aupoGuid);
	}

	public List<OaUserPost> queryList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaUserPostSqlID.QUERY));
		return querySpecial(param, OaUserPostSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

}
