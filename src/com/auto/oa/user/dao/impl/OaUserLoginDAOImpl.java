package com.auto.oa.user.dao.impl;

import java.util.List;
import java.util.Map;

import com.system.common.Page;
import com.auto.oa.user.domain.OaUserLogin;
import com.auto.oa.user.dao.IOaUserLoginDAO;
import com.system.util.AutoDaoPersistUtil;
import com.auto.oa.user.sql.sqlid.OaUserLoginSqlID;
/**
 * : t_auto_oa_user_login
 * 
 * 
 * @author Gen
 */
public class OaUserLoginDAOImpl extends AutoDaoPersistUtil implements IOaUserLoginDAO{

	public OaUserLogin insertOaUserLogin(OaUserLogin bean){
		return insert(bean, OaUserLoginSqlID.INSERT);
	}

	public boolean deleteOaUserLogin(String auloGuid){
		delete(auloGuid, OaUserLoginSqlID.DELETE);
		return true;
	}	

	public OaUserLogin updateOaUserLogin(OaUserLogin bean){
		return update(bean, OaUserLoginSqlID.UPDATE);
	}	

	public OaUserLogin loadOaUserLogin(String auloGuid){
		return query(new OaUserLogin().getClass(), auloGuid);
	}

	public List<OaUserLogin> queryPageList(Map<String,Object> param,Page page){
		page.setCount(countSpecial(param, OaUserLoginSqlID.QUERY));
		return querySpecial(param, OaUserLoginSqlID.QUERY, page.getFullOrderBy(), page.getOffset(), page.getLimit());
	}

	public List<OaUserLogin> queryList(Map<String,Object> param){
		return query(param, OaUserLoginSqlID.QUERY);
	}

}
